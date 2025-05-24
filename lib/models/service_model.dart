class ServiceModel {
  final String id;
  final String title;
  final String description;
  final String iconName;

  ServiceModel({
    required this.id,
    required this.title,
    required this.description,
    required this.iconName,
  });

  factory ServiceModel.fromMap(Map<String, dynamic> map, String id) {
    return ServiceModel(
      id: id,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      iconName: map['iconName'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'iconName': iconName,
    };
  }
}