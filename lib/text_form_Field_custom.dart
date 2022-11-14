import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatefulWidget {
  final String description;
  final String label;
  final Widget prefixIcon;
  bool? presao = true;
  Widget? suffixIcon;

  TextFormFieldCustom(
      {super.key,
      this.presao,
      required this.label,
      required this.description,
      required this.prefixIcon,
      this.suffixIcon});

  @override
  State<TextFormFieldCustom> createState() => _TextFormFieldCustomState();
}

class _TextFormFieldCustomState extends State<TextFormFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.presao ?? false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon ?? const SizedBox(),
        hintText: widget.description,
        label: Text(widget.label),
      ),
    );
  }
}
