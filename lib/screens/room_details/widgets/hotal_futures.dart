import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/widgets/facilitice_Itams_widget.dart';
import 'package:spent_time_admin/widgets/sub_title.dart';

class HotalFuturesWidgets extends StatelessWidget {
  const HotalFuturesWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
         Padding(
           padding: const EdgeInsets.only(left: 8,),
           child: SubTitleWidget(subtitle: 'Hotal & Room Fecilitices',),
         ),
                    Hight10,
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 7),
          child: Row(children: [
            faciliticeItamWidgets(futuresIcon: Icons.pool,futuresText: 'Swimming pool',),
            SizedBox(width: 60,),
                   faciliticeItamWidgets(futuresIcon: Icons.bolt
                   ,futuresText: 'Power Backup',),

          ],),
        ),
         Padding(
          padding:  EdgeInsets.only(left: 10,top: 10),
          child: Row(children:  [
            faciliticeItamWidgets(futuresIcon: Icons.local_parking_outlined,futuresText: 'Parking',),
            SizedBox(width: 110,),
                   faciliticeItamWidgets(futuresIcon: Icons.lock_clock_outlined
                   ,futuresText: 'Sefty Security',),

          ],),
        ),
         Padding(
          padding:  EdgeInsets.only(left: 10,top: 10),
          child: Row(children: [
            faciliticeItamWidgets(futuresIcon: Icons.fitness_center_outlined,futuresText: 'WorkOut',),
            SizedBox(width: 105,),
                   faciliticeItamWidgets(futuresIcon: Icons.meeting_room_outlined
                   ,futuresText: 'Meeting Room',),

          ],),
        ),
      ],
    );
  }
}