import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spent_time_admin/view/appruved_property/apruved_property.dart';
import 'package:spent_time_admin/view/bottom_navigation/bottom_navigation.dart';
import 'package:spent_time_admin/view/home/home_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      initialRoute: '/',
      getPages: [
GetPage(name: '/', page: ()=>BottomNavigationExample()),
GetPage(name: '/AddRooms', page: ()=>HomeScreen()),
GetPage(name: '/ApruvdPropertyScreen', page: ()=>ApruvdPropertyScreen()),
      ],);
  }
}

