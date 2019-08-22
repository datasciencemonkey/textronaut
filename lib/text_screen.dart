import 'package:flutter/material.dart';
import 'constants.dart';
import 'results_page.dart';

class TextScreen extends StatefulWidget {
  @override
  _TextScreenState createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Textronaut",
          style: kAppBarTextStyle,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bground2.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "🎯 Extract Valuable Text Insights",
                textAlign: TextAlign.center,
                style: kHeaderTextStyle,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  maxLines: 14,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: kTextFieldInputDecoration,
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              FlatButton(
                padding: EdgeInsets.only(top: 70),
                onPressed: () {
                  print("Analysis Complete!!");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsPage(
                        bmiResult: '',
                        resultText: '',
                        interpretation: '',
                      ),
                    ),
                  );
                },
                child: Text(
                  '⎈ ➤ Analyze with Viya',
                  style: kButtonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
