class VendorImage {
  int? id;
  String? imagePath;
  VendorImage({required this.id, required this.imagePath});

  VendorImage.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    imagePath = json["image_url"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["image_url"] = imagePath;
    return data;
  }
}
