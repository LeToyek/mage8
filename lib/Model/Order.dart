import 'package:mage8/Model/User.dart';
import 'package:mage8/Model/Vendors.dart';

class Orders {
  int? id;
  int? customerID;
  User? user;
  int? vendorID;
  Vendors? vendor;
  DateTime? scheduleTime;
  Enum? status;
  int? queueNumber;

  Orders(
      {required this.id,
      required this.customerID,
      required this.vendorID,
      required this.scheduleTime,
      required this.status,
      required this.queueNumber});

  Orders.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    customerID = json["customer_id"];
    vendorID = json["vendor_id"];
    scheduleTime = json["schedule_time"];
    status = json["status"];
    queueNumber = json["queueNumber"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["customer_id"] = customerID;
    data["vendor_id"] = vendorID;
    data["schedule_time"] = scheduleTime;
    data["status"] = status;
    data["queue_number"] = queueNumber;
    return data;
  }
}
