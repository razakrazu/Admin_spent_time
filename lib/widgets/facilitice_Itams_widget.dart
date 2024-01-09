import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/constants.dart';

class faciliticeItamWidgets extends StatelessWidget {
  const faciliticeItamWidgets({
    super.key, this.futuresIcon, this.futuresText,
  });
final futuresIcon;
final futuresText;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
                       
     Icon(futuresIcon,size: 25,),
    Width5,
    Text(futuresText),
                      ],);
  }
}