import 'package:flutter/material.dart';

class ElevatedButtonCustom extends StatefulWidget {
  final String description;
  final double vertical;
  final double horizontal;

  const ElevatedButtonCustom(
      {super.key,
      required this.description,
      required this.vertical,
      required this.horizontal});

  @override
  State<ElevatedButtonCustom> createState() => _ElevatedButtonCustomState();
}

class _ElevatedButtonCustomState extends State<ElevatedButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: widget.vertical,
          horizontal: widget.horizontal,
        ),
        child: Text(
          widget.description.toUpperCase(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
