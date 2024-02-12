import 'package:flutter/material.dart';

class FirstModel extends StatefulWidget {
  final IconData? icon;
  final String? gender;
  final bool is_selected;
  final int? index;
  final Function(int index) ontap;

  const FirstModel(
      {super.key,
      required this.index,
      required this.icon,
      required this.gender,
      required this.ontap,
      required this.is_selected});

  @override
  State<FirstModel> createState() => _FirstModelState();
}

class _FirstModelState extends State<FirstModel> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.ontap(widget.index!),
      child: Container(
        width: 160,
        decoration: BoxDecoration(
            color: widget.is_selected ? Colors.amber : Colors.amber[50],
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 100,
            ),
            Text(
              '${widget.gender}',
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
