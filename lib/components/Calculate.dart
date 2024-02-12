import 'dart:math';
import 'package:flutter/material.dart';
import 'package:task_4/BMI_calculator.dart';
import 'package:task_4/components/2nd_modelBMI.dart';
import 'package:task_4/components/3rd_modelBMI.dart';

double result = 0;

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () {
          setState(() {
            result = weight / pow((height / 100), 2);
            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (_) {
                  return AlertDialog(
                    backgroundColor: Colors.amber[50],
                    title: const Text(
                      'BMI Result : ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    ),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Your BMI is ${result.toStringAsFixed(2)}',
                          style: const TextStyle(fontSize: 24),
                        ),
                        Text(
                          'Gender : $selectedGender',
                          style: const TextStyle(fontSize: 24),
                        ),
                        Text(
                          'Age : $age',
                          style: const TextStyle(fontSize: 24),
                        ),
                        Text(
                          'Height : ${height.round()}',
                          style: const TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text(
                          'OK',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  );
                });
          });
        },
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          //height: 65,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Text(
            'CALCULATE',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
