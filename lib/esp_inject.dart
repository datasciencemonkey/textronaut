import 'networking.dart';

const hostname = 'http://espsixone.dlviyacluster.sashq-r.openstack.sas.com';
const http_port = 60001;
//String id = '';
const esp_sentiment_model_url =
    '$hostname:$http_port/SASESP/windows/text_analytics/cq1/input_data/state?value=injected';

class ESPModel {
  Future<dynamic> postTextData(String id, String inputText) async {
    NetworkHelper networkHelper =
        NetworkHelper('$esp_sentiment_model_url?filter=in(id,$id)');
    var sentimentData = await networkHelper.getData();
    print(sentimentData);
  }
}
