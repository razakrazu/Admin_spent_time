import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/view/room_details/widgets/fesilitice_widgets.dart';
import 'package:spent_time_admin/widgets/facilitice_Itams_widget.dart';
import 'package:spent_time_admin/widgets/sub_title.dart';

class FaciliticesScreen extends StatelessWidget {
  const FaciliticesScreen({super.key});

  @override
  Widget build(BuildContext context) {
            Map<String, dynamic>? data = Get.arguments as Map<String, dynamic>?;

    return Scaffold(
      body: ListView(
        
        children: [
          Hight40,
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(
  
  crossAxisAlignment: CrossAxisAlignment.start,
  
    children:  [
          Padding(
            padding: const EdgeInsets.all(10),
            child: SubTitleWidget(subtitle: 'Hotal & Room Facilitces'),
          ),
          Hight10,
          RoomFecliticesWidgets(),
          Hight30,
            Row(

         children: [
        Padding(
          padding:  EdgeInsets.only(left: 20),
          child: faciliticeItamWidgets(futuresIcon:Icons.flash_on_outlined
          , futuresText: data?['heater'],),

        ),
        Width30,
          Padding(
          padding:  EdgeInsets.only(left: 30),
          child: faciliticeItamWidgets(futuresIcon:Icons.fastfood_outlined 
          , futuresText:data?['parking'],),
        ), 
              Width30,
               Padding(
          padding:  EdgeInsets.only(left: 10),
          child: faciliticeItamWidgets(futuresIcon:Icons.flash_on_outlined 
          , futuresText:data?['parking'],),
        ),  
              Width30,
        Padding(
          padding:  EdgeInsets.only(left: 5),
          child: faciliticeItamWidgets(futuresIcon:Icons.video_camera_back_sharp 
          , futuresText: data?['Ac'],),
        ),
         ],
         
       ),
       Hight30,
         Row(

         children:  [
        Padding(
          padding:  EdgeInsets.only(left: 20),
          child: faciliticeItamWidgets(futuresIcon:Icons.lock_clock_outlined 
          , futuresText:data?['goodsefty'] ,),
        ),
        Width30,
          Padding(
          padding:  EdgeInsets.only(left: 10),
          child: faciliticeItamWidgets(futuresIcon:Icons.bathtub_outlined 
          , futuresText:'Roompool',),
        ), 
              Width30,
               Padding(
          padding:  EdgeInsets.only(left: 30),
          child: faciliticeItamWidgets(futuresIcon:Icons.tv_outlined 
          , futuresText:data?['tv'],),
        ),  
              Width30,
        Padding(
          padding:  EdgeInsets.only(left: 20),
          child: faciliticeItamWidgets(futuresIcon:Icons.ac_unit_outlined 
          , futuresText: data?['Ac'],),
        ),
         ],
         
       ),

    ],
  
  ),
),
        ],
      ),
    );
  }
}