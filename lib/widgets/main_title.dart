import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final label;
  const  MainTitle({
    super.key,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Text(
     label,
      style:const TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 230, 228, 228),
        fontWeight: FontWeight.bold
      ),
    );
  }
}