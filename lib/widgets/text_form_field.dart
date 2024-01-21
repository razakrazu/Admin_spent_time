import 'package:flutter/material.dart';
import 'package:spent_time_admin/core/colors.dart';

class Mytextformfields extends StatelessWidget {
  final String labal;
  final IconData icons;
  // final TextEditingController onChanged;
 final TextInputType texttype;
 final int maxLength;
final validation;
  Mytextformfields({
    super.key,
    required this.labal,
    required this.icons,
    // required this.onChanged,
     required this.texttype,
     required this.maxLength,
      this.validation,

  });
  

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validation,
      // controller: onChanged,
      keyboardType: texttype,
      maxLength: maxLength,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: labal,
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        prefixIcon: Icon(
          icons,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        
      ),
       
      style: TextStyle(color: BlackColor),

    );
  }
}