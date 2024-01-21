import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:spent_time_admin/controller/firebase_reposetry.dart';
import 'package:spent_time_admin/widgets/common_text_widgets.dart';

class ApruvdPropertyScreen extends StatelessWidget {
  ApruvdPropertyScreen({super.key});

  final AdminController allOwnerController = AdminController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 69, 69, 84),
        title: Text(
          'Appruved Room',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: allOwnerController.getAccepted(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: CommenTextWidget(
                  commontext: 'Error fetching data: ${snapshot.error}',
                ),
              );
            }
            final List<QueryDocumentSnapshot> documents = snapshot.data!.docs;

            if (documents.isEmpty) {
              return Center(
                child: CommenTextWidget(commontext: 'faild your list is empty'),
              );
            }

            return ListView.separated(
                itemBuilder: (context, index) {
                  Map<String, dynamic> data =
                      documents[index].data() as Map<String, dynamic>;
                  return Slidable(
                    endActionPane: ActionPane(
                        motion: DrawerMotion(),
                        dismissible: DismissiblePane(onDismissed: () {}),
                        children: [
                          SlidableAction(
                            onPressed: null,
                            backgroundColor:
                                const Color.fromARGB(255, 118, 17, 10),
                            foregroundColor: Colors.white.withOpacity(0.7),
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                          SlidableAction(
                            onPressed: null,
                            backgroundColor:
                                const Color.fromARGB(255, 19, 112, 44),
                            foregroundColor:
                                const Color.fromARGB(255, 255, 255, 255)
                                    .withOpacity(0.7),
                            icon: Icons.edit,
                            label: 'Edit',
                          ),
                        ]),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Card(
                          color: const Color.fromARGB(255, 209, 208, 208),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image:
                                            AssetImage('lib/assets/kmsm.jpg'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Container(
                                  height: 120,
                                  width: 150,
                                  child: GestureDetector(
                                    // onTap: () => Get.to(const RoomDetails()),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 25, left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            data['propertyname'] ?? '',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color.fromARGB(
                                                  255, 40, 39, 39),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Categary:${data['roomtype'] ?? ''}',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 40, 39, 39),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Place:${data['city'] ?? ''}',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 40, 39, 39),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 0,
                    ),
                itemCount: documents.length);
          }),
    );
  }
}
