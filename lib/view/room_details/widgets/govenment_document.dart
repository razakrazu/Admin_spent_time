import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/constants.dart';
import 'package:spent_time_admin/widgets/sub_title.dart';

class DocumentButtonWidgets extends StatelessWidget {
  const DocumentButtonWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     Padding(
       padding: const EdgeInsets.only(right: 170),
       child: SubTitleWidget(
                            subtitle: 'Govenment Documents',
                          ),
     ),
        Hight10,
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: SizedBox(
            height: 40,
            width: 250,
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Color.fromARGB(255, 1, 170, 255))),
                ),
              ),
              child: Text(
                'Documents',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w600,
                    fontSize: 17),
              ),
            ),
          ),
        )
      ],
    );
  }
}
