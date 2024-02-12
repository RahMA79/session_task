import 'package:flutter/material.dart';
import 'package:task_4/components/1st_modelBMI.dart';
import 'package:task_4/components/2nd_modelBMI.dart';
import 'package:task_4/components/3rd_modelBMI.dart';
import 'package:task_4/components/Calculate.dart';

String? selectedGender;

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  int? currentIndex = 0;
  double height = 120;
  double weight = 35;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.amber,
            //toolbarHeight: 65,
            centerTitle: true,
            title: const Text(
              'Body Mass Index',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FirstModel(
                        ontap: indxchange,
                        index: 0,
                        icon: Icons.male,
                        gender: 'Male',
                        is_selected: currentIndex == 0,
                      ),
                      FirstModel(
                        ontap: indxchange,
                        index: 1,
                        icon: Icons.female,
                        gender: 'Female',
                        is_selected: currentIndex == 1,
                      ),
                    ],
                  ),
                ),
                const Expanded(child: SecondModel()),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ThirdModel(label: 'Weight'),
                      ThirdModel(label: 'Age')
                    ],
                  ),
                ),
                const Calculate(),
              ],
            ),
          )),
    );
  }

  void indxchange(int index) {
    setState(() {
      currentIndex = index;
      selectedGender = index == 0 ? 'Male' : 'Female';
    });
  }
}
