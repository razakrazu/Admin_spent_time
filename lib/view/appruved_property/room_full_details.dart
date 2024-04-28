import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spent_time_admin/controller/firebase_reposetry.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/view/room_details/widgets/house_policies.dart';
import 'package:spent_time_admin/widgets/common_text_widgets.dart';
import 'package:spent_time_admin/widgets/hotal_name.dart';
import 'package:spent_time_admin/widgets/nearby_widgets.dart';
import 'package:spent_time_admin/widgets/sub_title.dart';

class AppruvedRoomFullDetails extends StatelessWidget {
  const AppruvedRoomFullDetails({super.key, required this.adminId, required this.data});
  final String adminId;
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
        AdminController adminController = AdminController();

        Map<String, dynamic>? data = Get.arguments as Map<String, dynamic>?;
    return Scaffold(
          appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 69, 69, 84),
        title: const Text(
          'Appruved Rooms',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body:SafeArea(child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 270,
                width: 400,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: (data!['listImages'] as List<dynamic>).length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: 370,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    String imageUrl = data['listImages'][index];

                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        placeholder: (context, url) =>
            const                CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>const Icon(Icons.error),
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: 1500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 226, 226, 226),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Hight20,
                            HotalNameWidget(
                              hotalName: 'Name: ${data['propertyname']}',
                            ),
                            Hight20,
                            const SubTitleWidget(
                              subtitle: 'About Property',
                            ),
                            Hight5,
                            CommenTextWidget(
                                commontext: data['discription'] ?? 'fail'),

                            Hight10,
                            const HousePoliciesWidget(
                              checkin: '12:00PM',
                              checkout: '11:00AM',
                            ),
                            Hight10,
                            const SubTitleWidget(
                              subtitle: 'House Details',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.train,
                              propertyName: 'Categary: ${data['roomtype']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.flight,
                              propertyName: 'City: ${data['city']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName: 'State: ${data['state']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.beach_access,
                              propertyName: 'Adress: ${data['address']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.insert_photo_outlined,
                              propertyName: 'Pincode: ${data['pincode']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.dinner_dining,
                              propertyName:
                                  'Room Rate: ${data['propertyPrice']}',
                            ),

                            Hight20,

                     const       SubTitleWidget(
                              subtitle: 'Hotal & Room Facilitice',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.train,
                              propertyName:
                                  'Swmming Pool: ${data['swimmingpool']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.flight,
                              propertyName:
                                  'Power BackUp: ${data['powerBackup']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName: 'Parking: ${data['parking']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.beach_access,
                              propertyName: 'Wifi: ${data['wifi']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.beach_access,
                              propertyName:
                                  'Meeting Room: ${data['meetinghall']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.beach_access,
                              propertyName: 'Ac: ${data['Ac']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.beach_access,
                              propertyName: 'Food: ${data['food']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.insert_photo_outlined,
                              propertyName: 'Room Ac: ${data['Ac']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.dinner_dining,
                              propertyName:
                                  'safety & security: ${data['goodsefty']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.flight,
                              propertyName: 'Television : ${data['tv']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName: 'Heater: ${data['heater']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName: 'Massage: ${data['massage']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName: 'Cctv: ${data['cctv']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName: 'Gym: ${data['WorkOut']}',
                            ),
                            Hight20,
                            // RulesWidgets(),
                            Hight10,

                            // DocumentButtonWidgets(),
                     const       SubTitleWidget(
                              subtitle: "What's Nearby",
                            ),

                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName: 'Airport: ${data['airport']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName: 'BusStand: ${data['busStant']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName:
                                  'Railway Station: ${data['railwayStation']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName: 'Park: ${data['park']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName: 'Hospital: ${data['cctv']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName: 'Town: ${data['town']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName:
                                  'Texi Stand: ${data['texiStation']}',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName: 'Restorent: ${data['restorent']}',
                            ),

                            Hight20,

                   const         SubTitleWidget(
                              subtitle: 'Roles & ragulations',
                            ),
                            Hight10,
                            NearByPropertyWidget(
                              propertyIcon: Icons.local_hospital_outlined,
                              propertyName: ' ${data['property Roles']}',
                            ),
                           
                       
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),) ,
    );
  }
} 