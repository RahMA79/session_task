import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String label;
  final String hintTxt;
  final String? Function(String?)? val;
  final TextEditingController? controller;
  final TextInputType? type;
  final Icon? suffix;
  final Icon? prefix;

  const CustomField(
      {super.key,
      required this.label,
      required this.hintTxt,
      this.val,
      this.controller,
      this.type,
      this.suffix,
      required this.prefix});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        keyboardType: type,
        controller: controller,
        validator: val,
        decoration: InputDecoration(
          prefix: prefix,
          suffix: suffix,
          labelText: label,
          labelStyle: const TextStyle(color: Colors.amber, fontSize: 24),
          hintText: hintTxt,
          hintStyle: const TextStyle(
            color: Colors.black87,
          ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.amber, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.red, width: 2),
          ),
        ),
      ),
    );
  }
}
