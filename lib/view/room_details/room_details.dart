import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spent_time_admin/controller/firebase_reposetry.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/view/appruved_property/apruved_property.dart';
import 'package:spent_time_admin/view/home/home_screen.dart';
import 'package:spent_time_admin/view/room_details/widgets/approvel_reject_button.dart';
import 'package:spent_time_admin/view/room_details/widgets/hotalimagesection.dart';
import 'package:spent_time_admin/view/room_details/widgets/house_policies.dart';
import 'package:spent_time_admin/widgets/common_text_widgets.dart';
import 'package:spent_time_admin/widgets/hotal_name.dart';
import 'package:spent_time_admin/widgets/nearby_widgets.dart';
import 'package:spent_time_admin/widgets/sub_title.dart';
import 'widgets/govenment_document.dart';

class RoomDetails extends StatelessWidget {
  RoomDetails({super.key, required this.adminId});
  final String adminId;
  AdminController adminController = AdminController();
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? data = Get.arguments as Map<String, dynamic>?;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HotalAddImageWidgets(),
                Container(
                  height: 1000,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 226, 226, 226),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hight20,
                        HotalNameWidget(
                          hotalName: 'Name: ${data?['propertyname']}',
                        ),
                        Hight20,
                        SubTitleWidget(
                          subtitle: 'About Property',
                        ),
                        Hight5,
                        CommenTextWidget(
                            commontext: data?['discription'] ?? 'fail'),

                        Hight10,
                        HousePoliciesWidget(
                          checkin: '12:00PM',
                          checkout: '11:00AM',
                        ),
                        // const HouseNearByWidgets(),
                        Hight10,
                        SubTitleWidget(
                          subtitle: 'House Details',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.train,
                          propertyName: 'Categary: ${data?['roomtype']}',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.flight,
                          propertyName: 'City: ${data?['city']}',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.local_hospital_outlined,
                          propertyName: 'State: ${data?['state']}',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.beach_access,
                          propertyName: 'Adress: ${data?['address']}',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.insert_photo_outlined,
                          propertyName: 'Pincode: ${data?['pincode']}',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.dinner_dining,
                          propertyName: 'Room Rate: ${data?['propertyPrice']}',
                        ),
                        Hight20,

                        SubTitleWidget(
                          subtitle: 'Hotal & Room Facilitice',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.train,
                          propertyName:
                              'Swmming Pool: ${data?['swimmingpool']}',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.flight,
                          propertyName: 'Power BackUp: ${data?['powerBackup']}',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.local_hospital_outlined,
                          propertyName: 'Parking: ${data?['parking']}',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.beach_access,
                          propertyName: 'Meeting Room: ${data?['meetinghall']}',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.insert_photo_outlined,
                          propertyName: 'Room Ac: ${data?['Ac']}',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.dinner_dining,
                          propertyName:
                              'safety & security: ${data?['goodsefty']}',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.flight,
                          propertyName: 'Television : ${data?['tv']}',
                        ),
                        Hight10,
                        NearByPropertyWidget(
                          propertyIcon: Icons.local_hospital_outlined,
                          propertyName: 'Heater: ${data?['heater']}',
                        ),
                        Hight20,
                        // RulesWidgets(),
                        Hight10,

                        DocumentButtonWidgets(),
                        Hight40,
                        RejectApprovelButtensWidget(
                          approvelOnTap: () async {
                            adminController.addToAcceptedCollection(data);
                            Get.to(ApruvdPropertyScreen());
                          },
                          rejectOnTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext Context) {
                                return AlertDialog(
                                  title:
                                      Text('Are you sure you want to reject '),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        child: Text('Cancel')),
                                    TextButton(
                                        onPressed: () {
                                          print('hey');
                                          adminController.addrejected(data);
                                          Get.to(HomeScreen());
                                        },
                                        child: Text('Conform')),
                                  ],
                                );
                              },
                            );
                          },
                        )
                      ],
                    ),
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
