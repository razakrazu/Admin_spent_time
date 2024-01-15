import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ApruvdPropertyScreen extends StatelessWidget {
  const ApruvdPropertyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 69, 69, 84),
        title: Text('Appruved Room',style: TextStyle(
       color: Colors.white,
        fontWeight: FontWeight.w500,fontSize: 25,
      ),),centerTitle: true,),
      body:ListView.separated(
                itemBuilder: (context, index) {
                  return Slidable(
                endActionPane: ActionPane(
                  motion: DrawerMotion(),
                   dismissible: DismissiblePane(onDismissed: () {}),
                   children: [
          SlidableAction(onPressed: null,
                  backgroundColor:const Color.fromARGB(255, 118, 17, 10),
                  foregroundColor: Colors.white.withOpacity(0.7),
                  icon: Icons.delete,
                  label: 'Delete',),
                   SlidableAction(onPressed: null,
                  backgroundColor:  const Color.fromARGB(255, 19, 112, 44),
                  foregroundColor:const Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
                  icon: Icons.edit,
                  label: 'Edit',),
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
                                  child: ListTile(
                                    // onTap: () => Get.to(const RoomDetails()),
                                    title: const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dream villa',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color:
                                                  Color.fromARGB(255, 40, 39, 39),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Place:Calicut',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color:
                                                  Color.fromARGB(255, 40, 39, 39),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Date:20/07/23',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color:
                                                  Color.fromARGB(255, 40, 39, 39),
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
                separatorBuilder: (context, index) => SizedBox(height: 0,),
                itemCount: 10),
    );
  }
}