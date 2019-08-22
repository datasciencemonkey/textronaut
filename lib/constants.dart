import 'package:flutter/material.dart';

const kAppBarTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 20.0,
);

const kHeaderTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w900,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kTextFieldInputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    icon: Icon(
      Icons.textsms,
      color: Colors.white,
    ),
    helperText: "Example: The customer service was amazing!",
    helperStyle: TextStyle(
      color: Colors.white,
    ),
    hintText: '>> Enter Some Text Here 🙂',
    hintStyle: TextStyle(
      color: Colors.grey,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      borderSide: BorderSide.none,
    ));

const kLabelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));
const kBottomContainerHeight = 80.0;
const kReusableCardColor = Color(0xFF1D1E33);
const KBottomContainerColor = Color(0xFFEB1555);
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);

const kValueTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle =
    TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);

const kTitleTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold);
const kResultTextStyle = TextStyle(
    color: Color(0xFF24D876), fontSize: 22.0, fontWeight: FontWeight.bold);

const kBMITextStyle = TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);
