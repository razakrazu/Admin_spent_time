import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/colors.dart';

class RejectApprovelButtensWidget extends StatelessWidget {
  const RejectApprovelButtensWidget({
    super.key, required this.approvelOnTap,required this.rejectOnTap, 
  });
final approvelOnTap;
final rejectOnTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Row(
       
       children: [
        ElevatedButton(onPressed: approvelOnTap,
        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 36, 112, 0)), 
        child: const Text('Approved',style: TextStyle(
          color: whiteColor,fontWeight: FontWeight.w600,fontSize: 16),),), 
        
       const SizedBox(width: 60,),
       ElevatedButton(onPressed: rejectOnTap,
       style:ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 135, 0, 0))
       , child: const Text('Rejected',style: TextStyle(
        color: whiteColor,fontWeight: FontWeight.w600,fontSize: 16),),),
      ],),
    );
  }
}