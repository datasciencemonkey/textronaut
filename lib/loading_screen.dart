import 'text_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'sentiment.dart';
import 'results_page.dart';

class LoadingScreen extends StatefulWidget {
  LoadingScreen({@required this.id});
  final String id;
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSentimentData(widget.id);
  }

  void getSentimentData(String id) async {
    var sentimentData = await SentimentModel().getTextSentiment(id); //json
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ResultsPage(
        sentiment: sentimentData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
