import 'package:flutter/material.dart';

class CommenTextWidget extends StatelessWidget {
  const CommenTextWidget({
    super.key, required this.commontext,
  });
final  commontext; 
  @override
  Widget build(BuildContext context) {
    return Text(commontext,
    style: TextStyle(fontWeight: FontWeight.w400,
     fontSize: 14,
     color: Colors.black),);
  }
}