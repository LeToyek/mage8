import 'package:flutter/material.dart';
import 'package:mage8/Model/Vendor_image.dart';

class Vendors {
  int? id;
  int? sellerId;
  int? verifiedBy;
  int? categoryId;
  String? name;
  String? description;
  int? isVerified;
  int? isActive;
  dynamic distance;
  List<VendorImage>? images;
  Vendors(
      {required this.id,
      required this.sellerId,
      required this.verifiedBy,
      required this.categoryId,
      required this.name,
      required this.description,
      required this.isVerified,
      required this.isActive,
      required this.distance,
      required this.images});

  Vendors.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    sellerId = json["seller_id"];
    verifiedBy = json["verified_by"];
    categoryId = json["category_id"];
    name = json["name"];
    description = json["description"];
    isVerified = json["is_verified"];
    isActive = json["is_active"];
    distance = json["distance"];
    images = json["images"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["seller_id"] = sellerId;
    data["verified_by"] = verifiedBy;
    data["category_id"] = categoryId;
    data["name"] = name;
    data["description"] = description;
    data["is_verified"] = isVerified;
    data["is_active"] = isActive;
    data["distance"] = distance;
    data["images"] = images;
    return data;
  }
}
