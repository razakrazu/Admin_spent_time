import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/colors.dart';
import 'package:spent_time_admin/core/constants.dart';

class ForgotPasswordBtnWidget extends StatelessWidget {
  const ForgotPasswordBtnWidget({
    super.key,
     required this.btnIcon, 
     required this.title,
      required this.onTap,
      required this.subtitle,
  });
final IconData  btnIcon;
final String title,subtitle;
final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
       height: 80,
        decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10),
       color: Color.fromARGB(255, 159, 159, 157),
                    ),
                    
                                 
       child:Row(
         children: [
         Width20,
           Icon(btnIcon,size: 50 ,),
           
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              
             Hight20,
             Text(title,
       style: TextStyle(fontWeight: FontWeight.bold)),
     Text(subtitle,    style: TextStyle(color: BlackColor),
                                   ),
                                   
           ],),
         ],
       ) ,
      ),
    );
  }
}
