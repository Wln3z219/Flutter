class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  // Constructor
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  // Factory constructor for creating a Product from JSON
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(), // Converting to double if it's a numeric type
      imageUrl: json['imageUrl'] as String,
    );
  }

  // Method for converting a Product instance back to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }
}
