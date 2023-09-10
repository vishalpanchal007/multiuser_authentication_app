import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreHelper {
  FireStoreHelper._();

  static FireStoreHelper fireStoreHelper = FireStoreHelper._();

  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  Future<DocumentReference> registerData(
      {required Map<String, dynamic> data}) async {
    DocumentReference<Map<String, dynamic>> documentReference =
    await fireStore.collection('Register').add(data);
    return documentReference;
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> loginData() {
    return fireStore.collection('Register').snapshots();
  }

  Future<void> updateUserData(
      {required Map<String, dynamic> data, required String id}) async {
    await fireStore.collection('Register').doc(id).update(data);
  }

  Future<void> deleteUerData({required String id}) async {
    await fireStore.collection('Register').doc(id).delete();
  }
}
