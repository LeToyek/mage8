class User {
  int? id;
  String? name;
  String? email;
  String? imageUrl;
  String? phone;
  bool? isSeller;

  User({
    this.id,
    this.name,
    this.email,
    this.imageUrl,
    this.phone,
    this.isSeller,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    imageUrl = json['image_url'];
    phone = json['phone'];
    isSeller = json['is_seller'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['image_url'] = imageUrl;
    data['phone'] = phone;
    data['is_seller'] = isSeller;
    return data;
  }
}
