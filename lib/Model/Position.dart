class Position {
  int? id;
  int? clientID;
  double? longitude;
  double? latitude;
  Position({
    required this.id,
    required this.clientID,
    required this.longitude,
    required this.latitude,
  });

  Position.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    clientID = json["client_id"];
    longitude = json["longitude"];
    latitude = json["latitude"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["client_id"] = clientID;
    data["longitude"] = longitude;
    data["latitude"] = latitude;
    return data;
  }
}
