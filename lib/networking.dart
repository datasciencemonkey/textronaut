import 'package:http/http.dart' as http;
import 'dart:convert';

//const post_headers = {"Content-Type":"application/json"};

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }

  Future postData(payload) async {
    http.Response response = await http.post(url,
        headers: {"Content-Type": "application/json"}, body: payload);
    if (response.statusCode == 200) {
      String data = response.body;
      return data;
    } else {
      print(response.statusCode);
    }
  }
}
