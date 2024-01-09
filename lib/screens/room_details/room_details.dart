import 'package:flutter/material.dart';
import 'package:spent_time_admin/screens/room_details/widgets/hotalimagesection.dart';
import 'package:spent_time_admin/screens/room_details/widgets/house_nearby_widget.dart';
import 'package:spent_time_admin/screens/room_details/widgets/name_about_widget.dart';
import 'package:spent_time_admin/screens/room_details/widgets/hotal_futures.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:   ListView(
          children: [
            Column(
              children: [
       const         HotalAddImageWidgets(),
                      Container(
                        height: 700,
                        width: double.infinity,
                       
                      decoration:   BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:const Color.fromRGBO(206, 206, 206, 1),                                
                                  ),   
                        child:Padding( 
                          padding:  EdgeInsets.all(10),
                          child: Column(
                       
                            children:const [
                          HotalNameAboutWidget(),
                         HouseNearByWidgets(),
                      HotalFuturesWidgets(),
                     
                    


                          ],),
                        ),
                      ),
              ],
            ),
          ],
        ),
      ),
    );
}
}












