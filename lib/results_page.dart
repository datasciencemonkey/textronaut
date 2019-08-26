import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'sentiment.dart';

String sentimentResult = "Positive";
String category = "some category";

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.id});
  final String id;

  void parseSentimentResults(id) {}

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
                      sentimentResult.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      id,
                      style: kBMITextStyle,
                    ),
                    Text(
                      category,
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
                Navigator.pop(context);
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
