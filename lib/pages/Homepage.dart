import 'package:bmi_calc/Constants/textstyles.dart';
import 'package:bmi_calc/components/ButtonCalc.dart';
import 'package:bmi_calc/components/RoundButtons.dart';
import 'package:bmi_calc/components/ReusableCard.dart';
import 'package:bmi_calc/components/TextInReuseable.dart';
import 'package:bmi_calc/pages/CalcBrain.dart';
import 'package:bmi_calc/pages/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class HomePage extends StatefulWidget {
  HomePage({super.key});

  var selectedCard;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //variables
  int weight = 60;
  int height = 180;
  int age = 40;
  var SelectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF090E21),
      appBar: AppBar(
        title: Text(
          'Bmi Calculator',
          style: kTitleTheme,
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF090E21),
        titleSpacing: 3,
        elevation: 3,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              //male card
              ReuseableCard(
                child: Cardtext(
                  colour: SelectedGender == Gender.male
                      ? Colors.white
                      : ActiveColor,
                  onTap: () {
                    setState(() {
                      SelectedGender = Gender.male;
                    });
                  },
                  icon: FontAwesomeIcons.mars,
                  text: "Male",
                ),
              ),
              //female card
              ReuseableCard(
                child: Cardtext(
                  colour: SelectedGender == Gender.female
                      ? Colors.white
                      : ActiveColor,
                  onTap: () {
                    setState(() {
                      SelectedGender = Gender.female;
                    });
                  },
                  icon: FontAwesomeIcons.venus,
                  text: "Female",
                ),
              )
            ],
          )),
          // cads
          Expanded(
            child: ReuseableCard(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: labeTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'cm',
                          style: kTitleTheme,
                        ),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      onChanged: (double value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                      inactiveColor: ActiveColor,
                      activeColor: Colors.pink,
                      min: 0,
                      max: 220,
                      thumbColor: Colors.white,
                    )
                  ]),
            ),
          ),
          //weight card
          Expanded(
              child: Row(
            children: [
              ReuseableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("weight", style: labeTextStyle),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        weight.toString(),
                        style: kAge_weightText,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundButtons(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        RoundButtons(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //age card
              ReuseableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Age",
                      style: labeTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        age.toString(),
                        style: kAge_weightText,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundButtons(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        RoundButtons(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
          ButtonCalc(
            text: "Calculator",
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(
                height: height,
                weight: weight,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    calcBmi: calc.calculate_bmi(),
                    result: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
