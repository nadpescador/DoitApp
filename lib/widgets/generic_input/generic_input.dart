import 'package:flutter/material.dart';

class GenericInput extends StatelessWidget {
  const GenericInput({
    Key? key,
    required this.controller,
    required this.label,
    required this.hint,
    this.type = TextInputType.text,
    this.obscureText = false,
    this.enableSuggestions = false,
    this.autocorrect = false,
  }) : super(key: key);

  final TextEditingController controller;
  final TextInputType type;
  final String label;
  final String hint;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        obscureText: obscureText,
        enableSuggestions: enableSuggestions,
        autocorrect: autocorrect,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black12),
          label: Text(label),
        ),
        controller: controller,
      ),
    );
  }
}
