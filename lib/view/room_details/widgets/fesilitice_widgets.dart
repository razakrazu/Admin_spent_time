import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/widgets/facilitice_Itams_widget.dart';

class RoomFecliticesWidgets extends StatelessWidget {
  const RoomFecliticesWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
     
     children:   [
       
       Row(

         children:  [
        Padding(
          padding:  EdgeInsets.only(left: 20),
          child: faciliticeItamWidgets(futuresIcon:Icons.wifi 
          , futuresText: 'Wifi',),

        ),
        Width30,
          Padding(
          padding:  EdgeInsets.only(left: 30),
          child: faciliticeItamWidgets(futuresIcon:Icons.fastfood_outlined 
          , futuresText: 'Food',),
        ), 
              Width30,
               Padding(
          padding:  EdgeInsets.only(left: 30),
          child: faciliticeItamWidgets(futuresIcon:Icons.tv_outlined 
          , futuresText: 'Tv',),
        ),  
              Width30,
        Padding(
          padding:  EdgeInsets.only(left: 30),
          child: faciliticeItamWidgets(futuresIcon:Icons.ac_unit_outlined 
          , futuresText: 'Ac',),
        ),
         ],
         
       ),
       Hight40,
        Row(

         children: [
        Padding(
          padding:  EdgeInsets.only(left: 20),
          child: faciliticeItamWidgets(futuresIcon:Icons.pool 
          , futuresText: 'Pool',),

        ),
      
          Padding(
          padding:  EdgeInsets.only(left: 40),
          child: faciliticeItamWidgets(futuresIcon:Icons.meeting_room_outlined 
          , futuresText: 'Meeting Room',),
        ), 
          
               Padding(
          padding:  EdgeInsets.only(left: 40),
          child: faciliticeItamWidgets(futuresIcon:Icons.fitness_center  
          , futuresText: 'Gym',),
        ),  
              Width30,
        Padding(
          padding:  EdgeInsets.only(left: 30),
          child: faciliticeItamWidgets(futuresIcon:Icons.music_note
          , futuresText: 'Music',),
        ),
         ],
         
       ),
     ],
    );
  }
}



