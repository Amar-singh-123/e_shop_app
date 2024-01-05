import 'package:cloud_firestore/cloud_firestore.dart';

class AppFirebaseFirestoreApi {
  AppFirebaseFirestoreApi({required this.collection});

  final String collection;
  final db = FirebaseFirestore.instance;
  Future<DocumentReference<Map<String, dynamic>>> add({required Map<String, dynamic> data}) async => await db.collection(collection).add(data);
  Future<void> set({required String docId, required Map<String, dynamic> data}) async => await db.collection(collection).doc(docId).set(data);
  Future<void> update({required String docId, required Map<String, dynamic> data}) async => await db.collection(collection).doc(docId).update(data);
  Future<void> delete({required String docId, required Map<String, dynamic> data}) async => await db.collection(collection).doc(docId).delete();
  Future<DocumentSnapshot<Map<String, dynamic>>> getOne({required String docId}) async => await db.collection(collection).doc(docId).get();
  Future<QuerySnapshot<Map<String, dynamic>>> getAll({required String docId}) async => await db.collection(collection).get();
  Stream<DocumentSnapshot<Map<String, dynamic>>> getOneAsStream({required String docId})  =>  db.collection(collection).doc(docId).snapshots();
  Stream<QuerySnapshot<Map<String, dynamic>>> getAllAsStream({required String docId})  =>  db.collection(collection).snapshots();
}
