import 'package:mage8/Model/Vendor.dart';

class Queue {
  final int attempt;
  final String estimation;
  final Vendor vendor;
  Queue(
      {required this.attempt, required this.estimation, required this.vendor});
}
