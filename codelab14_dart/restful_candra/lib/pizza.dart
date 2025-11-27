class Pizza {
  int? id;
  String? pizzaName;
  String? description;
  double? price;
  String? imageUrl;
  double? rating;

  Pizza({
    this.id,
    this.pizzaName,
    this.description,
    this.price,
    this.imageUrl,
    this.rating,
  });

  Pizza.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pizzaName = json['pizzaName'];
    description = json['description'];
    price = (json['price'] is int)
        ? (json['price'] as int).toDouble()
        : json['price']?.toDouble();
    imageUrl = json['imageUrl'];
    rating = (json['rating'] is int)
        ? (json['rating'] as int).toDouble()
        : json['rating']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pizzaName': pizzaName,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'rating': rating,
    };
  }
}
