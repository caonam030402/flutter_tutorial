import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hind;
  const AppTextField({super.key, required this.hind});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hind,
          filled: true,
          fillColor: Colors.white.withOpacity(0.5),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
    );
  }
}
