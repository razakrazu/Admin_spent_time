import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spent_time_admin/controller/firebase_reposetry.dart';
import 'package:spent_time_admin/view/room_details/room_details.dart';
import 'package:spent_time_admin/widgets/hotal_name.dart';
import 'package:spent_time_admin/widgets/sub_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final allDataController = Get.put(AdminController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 69, 69, 84),
        title: const Text(
          'HOME',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: allDataController.getDatas(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data() as Map<String, dynamic>;
              String id = document.id;
              return Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 203, 214, 219)),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage('lib/assets/asdlkd.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HotalNameWidget(
                                    hotalName:
                                        'Name:${data['propertyname'] ?? ''}'),
                                SubTitleWidget(
                                  subtitle:
                                      'Categary:${data['roomtype'] ?? ''}',
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                SubTitleWidget(
                                  subtitle: 'Place:${data['city'] ?? ''}',
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color:
                                            Color.fromARGB(136, 189, 187, 187)
                                                .withOpacity(0.2)),
                                    child: IconButton(
                                      onPressed: () {
                                        print(id);
                                        allDataController
                                            .deleteDataFromFirebase(id);

                                        Get.to(
                                            RoomDetails(
                                              adminId: id,
                                            ),
                                            arguments: data);
                                      },
                                      icon: const Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 20,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'ViewAll',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
