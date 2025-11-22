class Pizza {
  Pizza.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      pizzaName = json['pizzaName'],
      description = json['description'],
      price = json['price'],
      imageUrl = json['imageUrl'];
  final int id;
  final String pizzaName;
  final String description;
  final double price;
  final String imageUrl;
  Map<String, dynamic> toJson() => {
    'id': id,
    'pizzaName': pizzaName,
    'description': description,
    'price': price,
    'imageUrl': imageUrl,
  };
}
