import 'dart:math';

import 'package:bmi/screens/bmi_calculation.dart';
import 'package:bmi/shared/colors.dart';
import 'package:bmi/shared/components.dart';

import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double height = 161;
  int weight = 30;
  int age = 10;
  int year = 1;
  int gpa = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: fdefaultColor,
          title: Center(
            child: Text(
              'BMI App',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        backgroundColor: fdefaultColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputContainer(
                    label: 'Year',
                    value: year,
                    onIncrement: (val) {
                      setState(() {
                        if (val < 4) year++;
                      });
                    },
                    onDecrement: (val) {
                      setState(() {
                        if (val > 1) year--;
                      });
                    },
                  ),
                  SizedBox(width: 61.3),
                  InputContainer(
                    label: 'GPA',
                    value: gpa,
                    onIncrement: (val) {
                      setState(() {
                        if (val < 4) gpa++;
                      });
                    },
                    onDecrement: (val) {
                      setState(() {
                        if (val > 0) gpa--;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: sdefaultColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 60,
                        max: 200,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                          print(value.round());
                        },
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputContainer(
                    label: 'Age',
                    value: age,
                    onIncrement: (val) {
                      setState(() {
                        if (val < 24) age++;
                      });
                    },
                    onDecrement: (val) {
                      setState(() {
                        if (val > 18) age--;
                      });
                    },
                  ),
                  SizedBox(width: 61.3),
                  InputContainer(
                    label: 'Weight',
                    value: weight,
                    onIncrement: (val) {
                      setState(() {
                        if (val < 190) weight++;
                      });
                    },
                    onDecrement: (val) {
                      setState(() {
                        if (val > 50) weight--;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 70),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: tdefaultColor,
                ),
                width: double.infinity,
                child: Builder(
                  builder: (context) => MaterialButton(
                    onPressed: () {
                      double result = weight / pow(height / 100, 2);
                      print(result);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => Bmi_calc(
                                result: result.round(),
                                year: year,
                                gpa: gpa,
                                age: age,
                              )),
                        ),
                      );
                    },
                    height: 25,
                    child: Text(
                      "Calculate",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
