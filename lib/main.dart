import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spent_time_admin/bottom_navigation/bottom_navigation.dart';
import 'package:spent_time_admin/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp (
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',getPages: [
GetPage(name: '/', page: ()=>BottomNavigationExample()),
      ],);
  }
}

