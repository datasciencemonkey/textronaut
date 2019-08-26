import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'sentiment.dart';
import 'loading_screen.dart';

class ResultsPage extends StatefulWidget {
  ResultsPage({@required this.sentiment});
  final dynamic sentiment;
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  SentimentModel sentimentModel = SentimentModel();
  String sentimentText;

//  void setSentiment{
//    var sentiment = SentimentModel().getTextSentiment(id);
//    return sentiment["events"][1]["event"]["sentiment"];
//  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUI(widget.sentiment);
  }

  void updateUI(dynamic sentimentJSON) {
    setState(() {
      if (sentimentJSON == null) {
        sentimentText = '';
        return;
      }
//      sentimentText = sentimentJSON['events']['event']['sentiment']['\$t'];
      sentimentText = sentimentJSON['events'][1]['event']['sentiment'];
      print(sentimentText);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Textronaut')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kHeaderTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Your review was rated $sentimentText',
                      style: kResultTextStyle,
                    ),
                    Text(
                      'someval',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'category',
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.only(bottom: 50),
              onPressed: () {
                print("Analysis Complete!!");
                int count = 0;
                Navigator.of(context).popUntil((_) => count++ >= 2);
              },
              child: Text(
                '⎈ ➤ Try Again',
                style: kButtonTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//class ResultsPage extends StatelessWidget {
//  ResultsPage({@required this.id});
//  final String id;
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text('Textronaut')),
//      body: SafeArea(
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: <Widget>[
//            Expanded(
//              child: Container(
//                padding: EdgeInsets.all(15.0),
//                alignment: Alignment.bottomLeft,
//                child: Text(
//                  'Your Result',
//                  style: kHeaderTextStyle,
//                ),
//              ),
//            ),
//            Expanded(
//              flex: 5,
//              child: ReusableCard(
//                colour: kActiveCardColor,
//                childCard: Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  children: <Widget>[
//                    Text(
//                      parseSentimentResults(id),
//                      style: kResultTextStyle,
//                    ),
//                    Text(
//                      id,
//                      style: kBMITextStyle,
//                    ),
//                    Text(
//                      category,
//                      style: kBodyTextStyle,
//                      textAlign: TextAlign.center,
//                    )
//                  ],
//                ),
//              ),
//            ),
//            FlatButton(
//              padding: EdgeInsets.only(bottom: 50),
//              onPressed: () {
//                print("Analysis Complete!!");
//                Navigator.pop(context);
//              },
//              child: Text(
//                '⎈ ➤ Try Again',
//                style: kButtonTextStyle,
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
