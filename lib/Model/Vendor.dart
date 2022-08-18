import 'package:mage8/provider/provider.dart';

class Vendor {
  final String imageUrl, title, description;
  final double distance;
  final Status status;
  Vendor(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.status,
      required this.distance});
}
