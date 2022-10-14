import 'package:flutter/material.dart';
import 'package:tabata/resources/text_styles.dart';

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
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        width: 0.5,
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: TextStyles.label,
            ),
          ),
          TextFormField(
            obscureText: obscureText,
            enableSuggestions: enableSuggestions,
            autocorrect: autocorrect,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              enabledBorder: outlineInputBorder,
              border: outlineInputBorder,
              hintText: hint,
              hintStyle: TextStyles.hint,
            ),
            controller: controller,
          ),
        ],
      ),
    );
  }
}
