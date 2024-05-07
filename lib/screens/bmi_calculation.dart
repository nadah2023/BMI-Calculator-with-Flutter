import 'package:bmi/shared/colors.dart';
import 'package:flutter/material.dart';

class Bmi_calc extends StatelessWidget {
  final int age;
  final int year;
  final int gpa;
  final int result;

  Bmi_calc({
    required this.age,
    required this.gpa,
    required this.result,
    required this.year,
  });

  String getresult() {
    if (result >= 25) {
      return 'Overweight';
    } else if (result >= 18.5) {
      return 'normal.good job !';
    } else {
      return 'underweight';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fdefaultColor,
        leading: IconButton(
            iconSize: 30,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
            )),
        title: Text(
          "BMI result",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      backgroundColor: fdefaultColor,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Year:$year ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Your gpa is: $gpa",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Your BMI result is:$result ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "You are: ${getresult()}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
