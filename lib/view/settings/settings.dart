import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/colors.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/view/settings/widgets/frofile_manuBar.dart';
import 'package:spent_time_admin/widgets/main_title.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:    Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
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
                                       color: BlackColor.withOpacity(0.3)),
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
                    ElevatedButton(
                        onPressed: () {
                          // Get.to(ProfileScreen());
                        }, child: Text('Edit profile')),
                  ],
                ),
              ),
              Hight40,
              ProfileManuWidget(
                profileIcon: Icons.settings,
                profileTitle: 'Settings',
              ),
              ProfileManuWidget(
                profileIcon: Icons.notes_sharp,
                profileTitle: 'About',
              ),
              ProfileManuWidget(
                profileIcon: Icons.share,
                profileTitle: 'Share',
              ),
              Hight20,
              ProfileManuWidget(
                profileIcon: Icons.privacy_tip_outlined,
                profileTitle: 'privacy',
              ),
              ProfileManuWidget(
                profileIcon: Icons.power_settings_new_outlined,
                profileTitle: 'LogOut',
            // OnTap: ()=>AuthenticationRepositry.instance.logOut(),
             
                
              ),
            ],
          ),
    );
  }
}