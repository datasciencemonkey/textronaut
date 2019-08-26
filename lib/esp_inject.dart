import 'networking.dart';

const hostname = 'http://espsixone.dlviyacluster.sashq-r.openstack.sas.com';
const http_port = 60001;
//String id = '';
const espInjectUrl =
    '$hostname:$http_port/SASESP/windows/text_analytics/cq1/input_data/state?value=injected';

class ESPModel {
  Future<dynamic> putTextData(dynamic postBody) async {
    NetworkHelper networkHelper = NetworkHelper('$espInjectUrl');
    var response = await networkHelper.putData(postBody);
    print(response);
  }
}
