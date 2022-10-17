import 'package:mage8/Model/Product.dart';
import 'package:mage8/provider/provider.dart';

class Vendor {
  final String imageUrl, title, description, county, city;
  final double distance;
  final Status status;
  final List<Product> products;
  Vendor(
      {required this.title,
      required this.description,
      required this.county,
      required this.city,
      required this.imageUrl,
      required this.status,
      required this.distance,
      required this.products});
}
