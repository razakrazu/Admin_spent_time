import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/constants.dart';

class NearByPropertyWidget extends StatelessWidget {
  const NearByPropertyWidget({
    super.key, this.propertyName, this.propertyIcon,
  });

final propertyName;
final propertyIcon;
// final kMeter;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      
    //  Icon(propertyIcon,size: 27,),
      Width5,
      Text(propertyName,
    style: TextStyle(fontWeight: FontWeight.w400,
     fontSize: 16,
     color: Colors.black),),
    //  SizedBox(width: 20,),
  
        
        //  Text(kMeter,
        //   style: TextStyle(fontWeight: FontWeight.w300,
        //    fontSize: 16,
        //    color: Colors.black),),
      
    ],);
  }
}