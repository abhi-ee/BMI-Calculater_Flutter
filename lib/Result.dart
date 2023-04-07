

import 'package:bmi_abhi/input_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseableCard.dart';
import 'calculater.dart';

class result_page extends StatelessWidget {
  const result_page(
      {super.key,
      required this.bmi,
      required this.bmiText,
      required this.bmiTextInterprtion});

  final String bmi;
  final String bmiText;
  final String bmiTextInterprtion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'BMI Calculator',
        textAlign: TextAlign.center,
      )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
                child: Text(
              "Your Result",
              style: TitleTextStyle,
              textAlign: TextAlign.center,
            )),
          ),
          Expanded(
            flex: 5,
            child: ReuseableContainer(
              colour: inactiveCardColour,
              onPress: () {},
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    bmiText,
                    style: ResultTextStyle,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 5, 60),
                  ),
                  Text(
                    bmi,
                    style: BMITextStyle,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 5, 60),
                  ),
                  Text(
                    bmiTextInterprtion,
                    style: ResultTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Bottombutton(
            onTapD: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: ((context) => InputPage())));
            },
            buttonText: "Re- Calculate",
          ),
        ],
      ),
    );
  }
}
