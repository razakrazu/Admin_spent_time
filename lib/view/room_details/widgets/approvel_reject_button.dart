import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/colors.dart';

class RejectApprovelButtensWidget extends StatelessWidget {
  const RejectApprovelButtensWidget({
    super.key, 
  });
// final approvelOnTap;
// final rejectOnTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Row(
       
       children: [
               
    
      
        ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 36, 112, 0)), child: Text('Approved',style: TextStyle(color: WhiteColor,fontWeight: FontWeight.w600,fontSize: 16),),), 
        
        SizedBox(width: 60,),
       ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 135, 0, 0)), child: Text('Rejected',style: TextStyle(color: WhiteColor,fontWeight: FontWeight.w600,fontSize: 16),),),
      ],),
    );
  }
}