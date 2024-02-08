import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spent_time_admin/controller/firebase_reposetry.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/view/settings/widgets/frofile_manuBar.dart';

class SettingScreen extends StatelessWidget {
   SettingScreen({super.key});
 final allDataController = Get.put(AdminController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
         backgroundColor:const Color.fromARGB(255, 69, 69, 84),
        title:const Text('Settings',style: TextStyle(
       color: Colors.white,
        fontWeight: FontWeight.w500,fontSize: 25,
      ),),centerTitle: true,),
      body:    Column(
            children: [
           
              Hight40,
          const    ProfileManuWidget(
                profileIcon: Icons.settings,
                profileTitle: 'Settings',
              ),
        const      ProfileManuWidget(
                profileIcon: Icons.notes_sharp,
                profileTitle: 'About',
             
              ),
         const     ProfileManuWidget(
                profileIcon: Icons.share,
                profileTitle: 'Share',
              ),
              Hight20,
           const   ProfileManuWidget(
                profileIcon: Icons.privacy_tip_outlined,
                profileTitle: 'privacy',
               
              ),
              ProfileManuWidget(
                profileIcon: Icons.power_settings_new_outlined,
                profileTitle: 'LogOut',
            OnTap: (){
  // allDataController.getAllImagesFromFirebase();
            }
             
                
              ),
            ],
          ),
    );
  }
}