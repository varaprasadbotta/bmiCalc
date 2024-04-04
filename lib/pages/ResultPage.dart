import 'package:bmi_calc/Constants/textstyles.dart';
import 'package:bmi_calc/components/ButtonCalc.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({super.key, this.calcBmi, this.result, this.interpretation});

  var result;
  var calcBmi;
  var interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF090E21),
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: kTitleTheme,
        ),
      ),
      backgroundColor: inActiveColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: Text(
              result,
              style: kYourResultText,
            )),
            //middle container
            Expanded(
                flex: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF1D1E33),
                  ),
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "result".toUpperCase(),
                        style: kResultText,
                      ),
                      Text(
                        calcBmi,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 100),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                result + interpretation,
                                style: kButtonCalc,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              child: ButtonCalc(
                text: "Re-Calculate",
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
