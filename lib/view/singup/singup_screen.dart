import 'package:flutter/material.dart';
import 'package:spent_time_admin/widgets/text_form_field.dart';

  

class Singup_Screen extends StatelessWidget {
  const Singup_Screen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

     backgroundColor:const Color.fromARGB(255, 215, 215, 215),

      body:
          // Obx(() {  return

          Stack(
        children: [
         
          
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 120),
              child: ClipPath(
                child: Container(
                  height: 600,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0,
                        color:const Color.fromARGB(255, 102, 96, 96)),
                    borderRadius: BorderRadius.circular(20),
                    color:const Color.fromARGB(255, 173, 178, 181)
                  ),
                  child: Form(
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Mytextformfields(
                            labal: 'Name',
                            icons: Icons.person,
                               maxLength: 15,
                             texttype: TextInputType.text,
          
                          ),
                          
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Mytextformfields(
                            labal: 'Email',
                            icons: Icons.mail_outline,
                             texttype: TextInputType.text,
                                maxLength: 30,
          
                         
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Mytextformfields(
                            labal: 'Number',
                            icons: Icons.call,
                             texttype: TextInputType.number,
                             maxLength: 10,
          
                          
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Mytextformfields(
                            labal: 'password',
                            icons: Icons.lock,
                             texttype: TextInputType.text,
                                maxLength: 12,
                         
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 60, right: 60, top: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              // Get.to(BottomNavigationScreen());
                              // if (clientController.signupFormKey.currentState!.validate()) {
                              //   ClientSignUpController.instance.registerUser(
                              //       clientController.emailController.text.trim(),
                              //       clientController.passwordController.text .trim());
          
                              // }
                            },
                            child: const  Text(
                              'SINGUP',
                              style:  TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 114, 114, 114),
                              shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ) ,                 
                                  side: BorderSide(width: 1,color:Color.fromARGB(255, 202, 202, 202),
                             ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          // ),
        ],
      ),
      // }),
    );
  }
}
