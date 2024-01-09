import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/widgets/nearby_widgets.dart';
import 'package:spent_time_admin/widgets/sub_title.dart';

class HouseNearByWidgets extends StatelessWidget {
  const HouseNearByWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                      
      ],),
    );
  }
}