// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:spent_time_admin/core/constants.dart';
// import 'package:spent_time_admin/widgets/nearby_widgets.dart';
// import 'package:spent_time_admin/widgets/sub_title.dart';

// class HouseNearByWidgets extends StatelessWidget {
//   const HouseNearByWidgets({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//             Map<String, dynamic>? data = Get.arguments as Map<String, dynamic>?;

//     return  Padding(
//       padding: const EdgeInsets.all(5.0),
//       child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
     
                      
//       ],),
//     );
//   }
// }













// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'image_controller.dart';

// class MyWidget extends StatelessWidget {
//   final ImageController controller = Get.put(ImageController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Widget'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {
//             await controller.getImageUrls();
//             // Once you fetch the image URLs, you can use them as needed.
//             // For example, you can display them in a ListView.
//           },
//           child: Text('Fetch Images'),
//         ),
//       ),
//     );
//   }
// }


// import 'package:get/get.dart';
// import 'package:firebase_storage/firebase_storage.dart';

// class ImageController extends GetxController {
//   RxList<String> imageUrls = <String>[].obs;
//   final FirebaseStorage storage = FirebaseStorage.instance;

//   Future<void> getImageUrls() async {
//     try {
//       // Reference to the root of your storage bucket
//       Reference storageReference = storage.ref();

//       // List all items in the folder
//       ListResult result = await storageReference.child('images').listAll();

//       // Iterate through items and fetch download URLs
//       for (Reference ref in result.items) {
//         String downloadURL = await ref.getDownloadURL();
//         imageUrls.add(downloadURL);
//       }
//     } catch (error) {
//       print('Error fetching image URLs: $error');
//     }
//   }
// }