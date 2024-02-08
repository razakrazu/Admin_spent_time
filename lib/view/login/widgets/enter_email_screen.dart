import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/colors.dart';
import 'package:spent_time_admin/core/constants.dart';



class EnterEmailScreen extends StatelessWidget {
   EnterEmailScreen({super.key});
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: blackColor,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
             
            children: [
         Container(
child: Image(image: AssetImage('lib/assets/ewre.jpeg')),
         ),
         Hight30,
                  Text(enterEmailScreenTitle, style: const TextStyle(
                                           color: Color.fromARGB(255, 255, 255, 255),
                                           
                                           fontWeight: FontWeight.bold,
                                           fontSize: 30,
                                         ),),
                                         Hight10,
                                         Text(forgetPasswordSubtitle,   style:  TextStyle(color: Colors.white,fontSize: 17),
                                            ),
                                            Hight20,
              
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
                keyboardType: TextInputType.text,
                maxLength: 20,
                decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Enter your email',
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
            prefixIcon:const Icon(
              Icons.mail_outline,
              color:  Color.fromARGB(255, 200, 200, 200),
            ),
            
                ),
                 
                style:const TextStyle(color: whiteColor),
                  
              ),
          ),
          ElevatedButton(onPressed: (){},style:   ButtonStyle(), child:  Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}