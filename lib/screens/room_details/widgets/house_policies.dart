import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/widgets/sub_title.dart';

class HousePoliciesWidget extends StatelessWidget {
  const HousePoliciesWidget({
    super.key, this.checkin, this.checkout,
  });
final checkin;
final checkout;
  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      SubTitleWidget(subtitle: 'House Policies',),
      Hight10,
Padding(
  padding: const EdgeInsets.only(left: 30),
  child:   Row(children: [
    Icon(Icons.key),
    Width10,
  
          Text('Check-in\n${checkin}'),
  
       SizedBox(width: 120,),

             Text('Checkout\nTill${checkout}'),
  
  ],),
)                       
    ],);
  }
}