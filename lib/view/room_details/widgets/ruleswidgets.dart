
import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/widgets/facilitice_Itams_widget.dart';
import 'package:spent_time_admin/widgets/sub_title.dart';

class RulesWidgets extends StatelessWidget {
  const RulesWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubTitleWidget(subtitle: 'Rules & Restrictions',),
        Hight10,
                 faciliticeItamWidgets(futuresIcon: Icons.arrow_right_outlined,futuresText: 'Couples are welcome',),
                 faciliticeItamWidgets(futuresIcon: Icons.arrow_right_outlined,futuresText: 'Guests can cheak in using any local or outstation \n ID proof(PanCard not allow) ',),
                 faciliticeItamWidgets(futuresIcon: Icons.arrow_right_outlined,futuresText: 'Only indian Nationals allwed',),
                 faciliticeItamWidgets(futuresIcon: Icons.arrow_right_outlined,futuresText: 'As a complimentary benefit,your stay is now \n insured by Acko',),
           faciliticeItamWidgets(futuresIcon: Icons.arrow_right_outlined,futuresText: 'Pets not allowed',),

      ],
    );
  }
}