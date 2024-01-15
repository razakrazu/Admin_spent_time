import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/colors.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/view/singup/signup_controller/singup_form_controller.dart';
import 'package:spent_time_admin/widgets/main_title.dart';
import 'package:spent_time_admin/widgets/text_form_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return     Padding(
                    padding: const EdgeInsets.only(top: 30,),
                    child: SingleChildScrollView(
                      child: Column(
                        
                        children: [
                          Stack(
                            children: [
                              
                              
                                Container(
                                  height: 120,
                                  width: 120,
                                 decoration: BoxDecoration(
                                  image: DecorationImage(image:  AssetImage('lib/assets/iug.jpeg'),
                                  fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(400),
                                  
                                 ),
                                 
                                    ),
                              
                               Positioned(
                                bottom: 0,
                                right: 0,
                                 child: Container(
                                         width: 34,
                                         height: 35,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(100),
                                             color: BlackColor.withOpacity(0.4)),
                                         child: Icon(
                                           Icons.edit,
                                           color: WhiteColor,
                                         ),
                                       ),
                               ),
                            ],
                          ),
                          Hight10,
                          MainTitle(label: 'Amal'),
                          Hight10,
                    
                              Hight30,
                               Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30),
                              child: Mytextformfields(
                                labal: 'Name',
                                icons: Icons.person,
                                   maxLength: 15,
                                 texttype: TextInputType.text,
                                   validation:(value)=> SignUpValidater.validateEmptyText('Name', value),
                              ),
                              
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30),
                              child: Mytextformfields(
                                labal: 'Email',
                                icons: Icons.mail_outline,
                                 texttype: TextInputType.text,
                                    maxLength: 30,
                               validation:(value)=> SignUpValidater.validateEmptyText('Email ', value),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30),
                              child: Mytextformfields(
                                labal: 'Number',
                                icons: Icons.call,
                                 texttype: TextInputType.number,
                                 maxLength: 10,
                                validation:(value)=> SignUpValidater.validateEmptyText('Number', value),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30,right: 30),
                              child: Mytextformfields(
                                labal: 'password',
                                icons: Icons.lock,
                                 texttype: TextInputType.text,
                                    maxLength: 12,
                               validation:(value)=> SignUpValidater.validateEmptyText('Password', value),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 60, right: 60, top: 10),
                              child: ElevatedButton(
                                onPressed: () {
                       
                                },
                                child:   Text(
                                  'Update',
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255)),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 114, 114, 114),
                                  shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ) ,                 
                                      side:const BorderSide(width: 1,color:Color.fromARGB(255, 202, 202, 202),
                                 ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
  }
}