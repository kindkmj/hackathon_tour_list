class LocationModel {
  LocationModel({
    required this.latitude,
    required this.longitude,
    required this.name,
  });

  double latitude;
  double longitude;
  String name;

  //create from json
  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        latitude: json["latitude"] as double? ?? 0,
        longitude: json["longitude"] as double? ?? 0,
        name: json["name"] as String? ?? '',
      );
}
