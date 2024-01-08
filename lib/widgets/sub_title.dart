import 'package:flutter/material.dart';

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({
    
    super.key, this.subtitle,
  });
final subtitle;
  @override
  Widget build(BuildContext context) {
    return Text( subtitle,style: TextStyle(fontWeight: FontWeight.w700,
    fontSize: 17,
    color: Colors.black),);
  }
}