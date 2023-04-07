// ignore_for_file: non_constant_identifier_names, empty_constructor_bodies

import 'package:bmi_abhi/Result.dart';
import 'package:flutter/cupertino.dart';

import 'calculater.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseableCard.dart';
import 'iconContent.dart';
import 'constants.dart';

enum GenderType {
  Male,
  Female;
}


class InputPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //Color maleCardaColour = inactiveCardColour;
//  Color femaleCardColour = inactiveCardColour;
// 1= Male And 2= Female;
  GenderType selectGender = GenderType.Male;
  int sheight = 180;
  int weight = 10;
  int age = 10;

  // void updateColour(GenderType selectGender) {
  //   if (selectGender == GenderType.Male) if (maleCardaColour ==
  //       inactiveCardColour) {
  //     maleCardaColour = activeCardColour;
  //     femaleCardColour = inactiveCardColour;
  //   } else {
  //     maleCardaColour = inactiveCardColour;
  //   }
  //   else if (selectGender == GenderType.Female) if (femaleCardColour ==
  //       inactiveCardColour) {
  //     femaleCardColour = activeCardColour;
  //     maleCardaColour = inactiveCardColour;
  //   } else {
  //     femaleCardColour = inactiveCardColour;
  //   }
  // }

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
          children: <Widget>[
            // 1-two colums set
            Expanded(
                child: Row(
              children: [
                Expanded(
                  // child: GestureDetector(
                  //   onTap: () {
                  //     setState(() {
                  //       selectGender = GenderType.Male;
                  //     });
                  //   },
                  child: ReuseableContainer(
                    onPress: () {
                      setState(() {
                        selectGender = GenderType.Male;
                      });
                    },
                    colour: selectGender == GenderType.Male
                        ? activeCardColour
                        : inactiveCardColour,
                    childCard: genderCard(
                      icon: FontAwesomeIcons.mars,
                      gender: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  // child: GestureDetector(
                  //   onTap: () {
                  //     setState(() {
                  //       selectGender = GenderType.Female;
                  //     });
                  //  },
                  child: ReuseableContainer(
                    onPress: () {
                      setState(() {
                        selectGender = GenderType.Female;
                      });
                    },
                    colour: selectGender == GenderType.Female
                        ? activeCardColour
                        : inactiveCardColour,
                    childCard: genderCard(
                        icon: FontAwesomeIcons.venus, gender: 'FEMALE'),
                  ),
                  // ),
                ),
              ],
            )),

            Expanded(
              child: ReuseableContainer(
                onPress: () {},
                colour: activeCardColour,
                childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: labelTestStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            sheight.toString(),
                            style: BoldtTestStyle,
                          ),
                          Text(
                            'cm',
                            style: labelTestStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTickMarkColor: Colors.white,
                          thumbColor: const Color(0xFFEB1555),
                          overlayColor: const Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                            value: sheight.toDouble(),
                            min: 120,
                            max: 240,
                            inactiveColor: Color(0xFF8D8E98),
                            onChanged: (double newValue) {
                              setState(() {
                                sheight = newValue.round();
                              });
                            }),
                      )
                    ]),
              ),
            ),
            //2- two colums set
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReuseableContainer(
                    onPress: () {},
                    childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "WEIGHT",
                            style: labelTestStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: BoldtTestStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundActionButtion(
                                  icon: FontAwesomeIcons.minus,
                                  onPresseds: (() {
                                    setState(() {
                                      weight--;
                                    });
                                  })),
                              RoundActionButtion(
                                  icon: FontAwesomeIcons.plus,
                                  onPresseds: (() {
                                    setState(() {
                                      weight++;
                                    });
                                  })),
                            ],
                          )
                        ]),
                    colour: activeCardColour,
                    //childCard:
                  ),
                ),
                Expanded(
                  child: ReuseableContainer(
                    onPress: () {},
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: labelTestStyle,
                        ),
                        Text(
                          age.toString(),
                          style: BoldtTestStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundActionButtion(
                                icon: FontAwesomeIcons.minus,
                                onPresseds: (() {
                                  setState(() {
                                    age--;
                                  });
                                })),
                            RoundActionButtion(
                                icon: FontAwesomeIcons.plus,
                                onPresseds: (() {
                                  setState(() {
                                    age++;
                                  });
                                })),
                          ],
                        )
                      ],
                    ),
                    colour: activeCardColour,
                  ),
                ),
              ],
            )),

            Bottombutton(
              onTapD: () {
                Calculater clc = Calculater(height: sheight, weight: weight);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => result_page(
                        bmiText: clc.getResult(),
                        bmi: clc.calculateBMI(),
                        bmiTextInterprtion: clc.getResultInterpretion(),
                      ),
                    ));
              },
              buttonText: "CALCULATER",
            ),
          ],
        ));
  }
}

@immutable
class RoundActionButtion extends StatelessWidget {
  const RoundActionButtion({required this.icon, required this.onPresseds});

  final IconData icon;
  final VoidCallback onPresseds;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPresseds,
      child: Icon(icon),
      elevation: 0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF111328),
    );
  }
}

class Bottombutton extends StatelessWidget {
  const Bottombutton(
      {super.key, required this.onTapD, required this.buttonText});

  final VoidCallback onTapD;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapD,
      child: Container(
        // mainAxisAlignment: MainAxisAlignment.center,
        color: bottomContainerolour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Text(
          buttonText,
          style: LargeButtonStyle,
          selectionColor: Color.fromARGB(255, 58, 176, 155),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// onPressed: () {
//                                   setState(() {
//                                     age++;
//                                   });
//                                 }