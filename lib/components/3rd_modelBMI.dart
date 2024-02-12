import 'package:flutter/material.dart';

int age = 19;
int weight = 50;

class ThirdModel extends StatefulWidget {
  final String? label;

  const ThirdModel({super.key, required this.label});

  @override
  State<ThirdModel> createState() => _ThirdModelState();
}

class _ThirdModelState extends State<ThirdModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 160,
      decoration: BoxDecoration(
          color: Colors.amber[50], borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${widget.label}",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.label == 'Age' ? "$age" : "$weight",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                  heroTag: widget.label == 'Age' ? "age++" : "weight++",
                  mini: true,
                  backgroundColor: Colors.amber,
                  onPressed: () {
                    setState(() {
                      widget.label == 'Age' ? age++ : weight++;
                    });
                  },
                  child: const Icon(Icons.add)),
              FloatingActionButton(
                  heroTag: widget.label == 'Age' ? "age--" : "weight--",
                  mini: true,
                  backgroundColor: Colors.amber,
                  onPressed: () {
                    setState(() {
                      if (widget.label == 'Age' && age > 0) {
                        age--;
                      } else if (widget.label == 'Weight' && weight > 0) {
                        weight--;
                      }
                    });
                  },
                  child: const Icon(Icons.remove)),
            ],
          )
        ],
      ),
    );
  }
}
