import 'package:bmi/constants.dart';
import 'package:bmi/custom_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_card.dart';

class Result extends StatelessWidget {
  Result({@required this.bmiResult,@required this.resultText,@required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(15.0),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: MyCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: kNoteTextStyle,
                  ),
                  Text(
                    bmiResult,
                    textAlign: TextAlign.center,
                    style: kBMIresult,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(letterSpacing: 1.3, height: 1.3),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            text: Text(
              'RE-CALCULATE',
              style: kButtonTextStyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
