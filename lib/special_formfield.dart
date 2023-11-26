// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';

class Special_FormField extends StatelessWidget {
  TextEditingController? controller = TextEditingController();
  final Function? validator;
  TextInputType? keyboardType;
  int? maxLines;
  String? labelText;
  Widget? suffixIcon;
  bool? obscureText;
  Special_FormField({
    super.key,
    this.controller,
    this.validator,
    this.keyboardType,
    this.labelText,
    this.suffixIcon,
    this.obscureText,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      controller: controller,
      cursorColor: Colors.black,
      keyboardType: keyboardType,
      obscureText: obscureText!,
      textAlignVertical: TextAlignVertical.center,
      validator: (value) => validator!(value),
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: suffixIcon,
        // hintText: hintText,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xffC4C4C4),
        ),
        errorStyle:
            Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.red),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 186, 190, 0.5), width: 1),
        ),
      ),
    );
  }
}
