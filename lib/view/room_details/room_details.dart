import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/view/room_details/widgets/approvel_reject_button.dart';
import 'package:spent_time_admin/view/room_details/widgets/hotalimagesection.dart';
import 'package:spent_time_admin/view/room_details/widgets/house_nearby_widget.dart';
import 'package:spent_time_admin/view/room_details/widgets/house_policies.dart';
import 'package:spent_time_admin/view/room_details/widgets/name_about_widget.dart';
import 'package:spent_time_admin/view/room_details/widgets/hotal_futures.dart';
import 'package:spent_time_admin/view/room_details/widgets/ruleswidgets.dart';
import 'widgets/govenment_document.dart';

class RoomDetails extends StatelessWidget {
  const RoomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HotalAddImageWidgets(),
                Container(
                  height: 1200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 226, 226, 226),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const HotalNameAboutWidget(),
                        Hight10,
                        HousePoliciesWidget(
                          checkin: '12:00PM',
                          checkout: '11:00AM',
                        ),
                        Hight10,
                        const HouseNearByWidgets(),
                        const HotalFuturesWidgets(),
                        Hight10,
                        TextButton(
                            onPressed: () {}, child: const Text('View More')),
                        Hight10,
                        RulesWidgets(),
                        Hight10,
                       
                        DocumentButtonWidgets(),
                        Hight40,
                        RejectApprovelButtensWidget()
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
