import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  final String hintText;
  //final bool obscureText;
  final String? Function(String?) validator;
  final Function(String?) onSaved;
  const CustomInputText({
    super.key, required this.hintText, required this.validator, required this.onSaved
    //this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        // obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,

        ),
        style: TextStyle(fontSize: 14),
        validator: validator,
        onSaved: onSaved,
      ),
    );
  }
}



