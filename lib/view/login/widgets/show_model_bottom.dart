import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:spent_time_admin/core/colors.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/view/login/widgets/enter_email_screen.dart';
import 'package:spent_time_admin/view/login/widgets/forget_password_btn.dart';

Future<dynamic> show_Modal_Bottom_Sheet(BuildContext context) {
    return showModalBottomSheet(context: context,
                             builder: 
                             (context) => Container(
                              height: 420,
                              width: 360,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(width: 2,color:const Color.fromARGB(255, 117, 112, 112) ),
                                color: blackColor
                              ),
                             child:  Padding(
                               padding: const EdgeInsets.only(top: 40,left: 20),
                               child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,  
                                children: [
                             
                             
                   const                 Text(forgetPasswordEmailTitle, style: TextStyle(
                                         color: Color.fromARGB(255, 255, 255, 255),
                                         
                                         fontWeight: FontWeight.bold,
                                         fontSize: 30,
                                       ),),
                                       Hight10,
                                       Text(forgetPasswordSubtitle,   style: const TextStyle(color: Colors.white,fontSize: 17),
                                          ),
                                 Padding(
                                   padding: const EdgeInsets.only(right: 20,top: 30),
                                   child: ForgotPasswordBtnWidget(
                                    btnIcon:Icons.mail_outline ,
                                    title: 'Email',
                                     onTap: () {
                                      Navigator.pop(context);
                                      Get.to(EnterEmailScreen());
                                     }, 
                                     subtitle: 'Reset via Email verification',),
                                 ),
                                Padding(
                                   padding: const EdgeInsets.only(right: 20,top: 30),
                                   child: ForgotPasswordBtnWidget(
                                    btnIcon:Icons.phone_android ,
                                    title: 'Phone No',
                                     onTap: () {}, 
                                     subtitle: 'Reset via phone verification',),
                                 ),
                                ],
                               ),
                             ),
                             ),);
  }


