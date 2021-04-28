class Product {
  int id;
  String title;
  var price;
  String description;
  String category;
  String image;

  Product({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) => new Product(
        id: json['id'] as int,
        title: json["title"] == null ? null : json["title"],
        price: json["price"],
        description: json["description"] == null ? null : json["description"],
        category: json["category"] == null ? null : json["category"],
        image: json["image"] == null ? null : json["image"],
      );
}

List<Product> fetchProducts() {
  List<Product> productList = [];
  return productList;
}
