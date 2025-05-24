import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/service_model.dart';

class ServicesRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<ServiceModel>> getServices() async {
    try {
      final QuerySnapshot snapshot = await _firestore.collection('services').get();

      return snapshot.docs.map((doc) {
        return ServiceModel.fromMap(
          doc.data() as Map<String, dynamic>,
          doc.id,
        );
      }).toList();
    } catch (e) {
      print('Error fetching services: $e');
      return [];
    }
  }
}