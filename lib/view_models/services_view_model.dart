import 'package:flutter/foundation.dart';
import '../models/service_model.dart';
import '../repositories/services_repository.dart';

class ServicesViewModel extends ChangeNotifier {
  final ServicesRepository _repository = ServicesRepository();

  List<ServiceModel> _services = [];
  bool _isLoading = false;
  String _error = '';

  List<ServiceModel> get services => _services;
  bool get isLoading => _isLoading;
  String get error => _error;

  Future<void> fetchServices() async {
    _isLoading = true;
    _error = '';
    notifyListeners();

    try {
      _services = await _repository.getServices();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      _error = e.toString();
      notifyListeners();
    }
  }
}