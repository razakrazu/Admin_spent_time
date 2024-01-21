import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminController extends GetxController{
  final CollectionReference  ownerdatas = FirebaseFirestore.instance.collection('clientData');
  
  final db =FirebaseFirestore.instance;
  
   final CollectionReference datas =
      FirebaseFirestore.instance.collection('clientData') ;

      Stream<QuerySnapshot> getDatas() {
    final dataStream = datas.snapshots(); 
    return dataStream; 
      }

      Stream<QuerySnapshot> getall()  {
  final CollectionReference accepted =
      FirebaseFirestore.instance.collection('clientData');
  final acceptStream = accepted.snapshots();
  return acceptStream;
}


Stream<QuerySnapshot> getAccepted()  {
  final CollectionReference accepted =
      FirebaseFirestore.instance.collection('approvedRooms');
  final acceptStream = accepted.snapshots();
  return acceptStream;
}

  Future<void> addToAcceptedCollection(Map<String, dynamic>? data) async {
 
    if (data != null) {
      try {
        await FirebaseFirestore.instance
            .collection('approvedRooms')
            .add(data);          
      } catch (error) {
         print('Error adding to accepted_clients collection: $error');
        rethrow;
      }
    } else {
    const CircularProgressIndicator();
    }
  }


Future<void> addrejected(Map<String, dynamic>? data) async {
  
    if (data != null) {
      await FirebaseFirestore.instance
          .collection('rejectionDatas')
          .add(data);
    } else {
    }
  
}

 Future <void> deleteDataFromFirebase(String? documentId) async{
      
  if (documentId != null) {
   await  FirebaseFirestore.instance
          .collection('ClientData') 
          .doc(documentId)
          .delete();
  } else {
    print('Document ID not available');
  }

 }


}

 
    