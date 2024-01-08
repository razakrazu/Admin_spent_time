import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/widgets/common_text_widgets.dart';
import 'package:spent_time_admin/widgets/hotal_name.dart';
import 'package:spent_time_admin/widgets/nearby_widgets.dart';
import 'package:spent_time_admin/widgets/sub_title.dart';

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
                Container(
                        height: 250,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisExtent: 370,
                            crossAxisSpacing: 1,
                            mainAxisSpacing: 1,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        'lib/assets/sdjnjnja.jpg',
                                      ),
                                      fit: BoxFit.fill)),
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 700,
                        width: double.infinity,
                        
                      decoration:   BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromRGBO(206, 206, 206, 1),
                                  
                                  ),
                                  
                        child:Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Hight20,
                        HotalNameWidget(hotalName: 'Dream Villa',),
                        Hight20,
                        SubTitleWidget(subtitle: 'About Property',),
                        Hight5,
   CommonTextWidget(commontext: 'Using a widget function instead of a widget fully guarantees that the widget and its controllers will be removed from memory when they are no longer used.',),

                        Hight10,
                      SubTitleWidget(subtitle: 'House Nearby',),

Hight10,

                      NearByPropertyWidget(propertyIcon: Icons.train,propertyName: 'Railway Station',kMeter: '2.5km',),
                      Hight10,

                      NearByPropertyWidget(propertyIcon: Icons.flight,propertyName: 'Airport',kMeter: '7.5km',),
                      Hight10,

                      NearByPropertyWidget(propertyIcon: Icons.local_hospital_outlined,propertyName: 'Hospital',kMeter: '2.5km',),
                      Hight10,

                      NearByPropertyWidget(propertyIcon: Icons.beach_access,propertyName: 'Beach',kMeter: '2.5km',),
                        Hight10,

                      NearByPropertyWidget(propertyIcon: Icons.insert_photo_outlined,propertyName: 'View Point',kMeter: '2.5km',), 
                       Hight10,

                      NearByPropertyWidget(propertyIcon: Icons.dinner_dining,propertyName: 'Hotal',kMeter: '2.5km',),
                        Hight10,

                      NearByPropertyWidget(propertyIcon: Icons.directions_bus_outlined,propertyName: 'Bus Stop',kMeter: '2.5km',),

                    Hight20,
                    SubTitleWidget(subtitle: 'Hotal & Room Fecilitices',),
                    
                      
                    


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



