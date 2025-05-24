import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/service_model.dart';

class ServicesRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<ServiceModel>> getServices() async {
    try {
      final QuerySnapshot snapshot = await _firestore.collection('services').get();

      return snapshot.docs.map((doc) {
        return ServiceModel.fromJson(
            doc.data() as Map<String, dynamic>
        );
      }).toList();
    } catch (e) {
      print('Error fetching services: $e');
      return [];
    }
  }
}