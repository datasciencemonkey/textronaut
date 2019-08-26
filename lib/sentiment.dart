import 'networking.dart';

const hostname = 'http://espsixone.dlviyacluster.sashq-r.openstack.sas.com';
const http_port = 60001;
//String id = '';
const esp_sentiment_model_url =
    '$hostname:$http_port/SASESP/events/text_analytics/cq1/sentiment_copy';

class SentimentModel {
  Future<dynamic> getTextSentiment(String id) async {
    NetworkHelper networkHelper =
        NetworkHelper('$esp_sentiment_model_url?filter=in(id,$id)');
    var sentimentData = await networkHelper.getData();
    print(sentimentData);
    return sentimentData;
  }
}
