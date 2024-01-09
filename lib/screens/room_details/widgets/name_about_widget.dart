import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/widgets/common_text_widgets.dart';
import 'package:spent_time_admin/widgets/hotal_name.dart';
import 'package:spent_time_admin/widgets/sub_title.dart';

class HotalNameAboutWidget extends StatelessWidget {
  const HotalNameAboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
           crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Hight20,
                        HotalNameWidget(hotalName: 'Dream Villa',),
                        Hight20,
                        SubTitleWidget(subtitle: 'About Property',),
                        Hight5,
                 CommonTextWidget(commontext: 'Using a widget function instead of a widget fully guarantees that the widget and its controllers will be removed from memory when they are no longer used.',),
                        
    ],);
  }
}
