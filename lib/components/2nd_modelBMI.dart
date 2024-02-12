import 'package:flutter/material.dart';

double height = 120;

class SecondModel extends StatefulWidget {
  const SecondModel({super.key});

  @override
  State<SecondModel> createState() => _SecondModelState();
}

class _SecondModelState extends State<SecondModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.amber[50], borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'HEIGHT',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
            ),
            Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${height.round()}',
                  style: const TextStyle(
                      fontSize: 36, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'CM',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Slider(
              min: 30,
              max: 250,
              value: height,
              onChanged: (val) {
                setState(() {
                  height = val;
                });
              },
              activeColor: Colors.amber,
              inactiveColor: Colors.amber[100],
            )
          ],
        ),
      ),
    );
  }
}
