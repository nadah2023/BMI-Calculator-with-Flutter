import 'package:bmi/shared/colors.dart';
import 'package:flutter/material.dart';

class InputContainer extends StatelessWidget {
  final String label;
  final int value;
  final Function(int) onIncrement;
  final Function(int) onDecrement;

  const InputContainer({
    required this.label,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: sdefaultColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "$value",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 30,
                onPressed: () {
                  onIncrement(value);
                },
                icon: Icon(Icons.add_circle_rounded),
                color: Colors.white,
              ),
              SizedBox(width: 15),
              IconButton(
                iconSize: 30,
                onPressed: () {
                  onDecrement(value);
                },
                icon: Icon(Icons.remove_circle_rounded),
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
