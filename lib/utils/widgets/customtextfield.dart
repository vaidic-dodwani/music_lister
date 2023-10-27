import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  const CustomTextField({super.key,required this.label,required this.controller});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      
      width: double.infinity,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          label:  Text(widget.label),

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}