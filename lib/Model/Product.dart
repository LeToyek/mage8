class Product {
  int? id;
  int? vendorId;
  int? price;
  bool? isAvailable;
  String? imagePath, name;
  Product(
      {required this.id,
      required this.vendorId,
      required this.name,
      required this.price,
      required this.isAvailable,
      required this.imagePath});

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "vendor_id": vendorId,
      "name": name,
      "price": price,
      "is_available": isAvailable,
      "image_url": imagePath,
    };
  }

  Product.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    vendorId = json["vendor_id"];
    name = json["name"];
    price = json["price"];
    isAvailable = json["is_available"];
    imagePath = json["image_url"];
  }
}
