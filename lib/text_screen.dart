import 'package:flutter/material.dart';
import 'constants.dart';
import 'results_page.dart';
import 'esp_inject.dart';
import 'package:random_string/random_string.dart';
import 'dart:math' show Random;

class TextScreen extends StatefulWidget {
  @override
  _TextScreenState createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  String textValue;
  String id = '';
  final TextEditingController _controller = new TextEditingController();
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
                  controller: _controller,
                  maxLines: 14,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: kTextFieldInputDecoration,
                  onChanged: (value) {
                    textValue = value;
                  },
                ),
              ),
              FlatButton(
                padding: EdgeInsets.only(top: 70),
                onPressed: () async {
                  id = randomAlphaNumeric(10);
                  print(id);
                  print(textValue);
                  Map<String, dynamic> body = {
                    '_body': {'id': id, 'response': textValue}
                  };
                  var espData = await ESPModel().putTextData(body);
//                TODO: Follow this above with getting responses on the initstate from the ResultsPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsPage(id: id),
                    ),
                  );
                  setState(() {
                    _controller.clear();
                  });
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
