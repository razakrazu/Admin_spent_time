import 'package:flutter/material.dart';

class HotalNameWidget extends StatelessWidget {
  const HotalNameWidget({
    super.key, this.hotalName,

  });
final hotalName;
  @override
  Widget build(BuildContext context) {
    return Text(hotalName,style: TextStyle(fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Colors.black),);
  }
}