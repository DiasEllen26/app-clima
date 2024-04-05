class Clima {
  String temperature;
  String wind;
  String description;

  Clima({required this.temperature, required this.wind, required this.description});

  factory Clima.fromJson(Map<String, dynamic> json) {
    return Clima(
      temperature: json['temperature'],
      wind: json['wind'],
      description: json['description'],
    );
  }
}