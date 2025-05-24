class ServiceModel {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;

  ServiceModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      price: (json['price'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
    };
  }

  // Sample data for testing
  static List<ServiceModel> getSampleServices() {
    return [
      ServiceModel(
        id: '1',
        title: 'Music Production',
        description: 'Professional music production services for artists and bands.',
        imageUrl: 'assets/images/production.jpg',
        price: 299.99,
      ),
      ServiceModel(
        id: '2',
        title: 'Mixing & Mastering',
        description: 'High-quality mixing and mastering for your tracks.',
        imageUrl: 'assets/images/mixing.jpg',
        price: 149.99,
      ),
      ServiceModel(
        id: '3',
        title: 'Vocal Recording',
        description: 'Professional vocal recording sessions with top equipment.',
        imageUrl: 'assets/images/vocal.jpg',
        price: 99.99,
      ),
      ServiceModel(
        id: '4',
        title: 'Beat Making',
        description: 'Custom beat production for rappers and singers.',
        imageUrl: 'assets/images/beats.jpg',
        price: 79.99,
      ),
    ];
  }
}