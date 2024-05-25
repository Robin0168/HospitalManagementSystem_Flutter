import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  //get collection
  final CollectionReference notes =
      FirebaseFirestore.instance.collection("notes");

  //create
  Future<void> addNote(String val) {
    return notes.add({'note': val, 'timestamp': Timestamp.now()});
  }

  //read
  Stream<QuerySnapshot> getNotes() {
    final noteStrem = notes.orderBy('timestamp', descending: true).snapshots();
    return noteStrem;
  }

  //update
  Future<void> updateNode(String docId, String newNode) {
    return notes
        .doc(docId)
        .update({'note': newNode, 'timestamp': Timestamp.now()});
  }

  //delete
  Future<void> deleteNode(String docId) {
    return notes.doc(docId).delete();
  }
}
