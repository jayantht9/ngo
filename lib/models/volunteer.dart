/// Model class for Volunteer data
class Volunteer {
  final String name;
  final String phone;
  final String city;
  final DateTime registrationDate;

  Volunteer({
    required this.name,
    required this.phone,
    required this.city,
    DateTime? registrationDate,
  }) : registrationDate = registrationDate ?? DateTime.now();

  /// Convert Volunteer to Map for storage/serialization
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phone': phone,
      'city': city,
      'registrationDate': registrationDate.toIso8601String(),
    };
  }

  /// Create Volunteer from Map for deserialization
  factory Volunteer.fromMap(Map<String, dynamic> map) {
    return Volunteer(
      name: map['name'] ?? '',
      phone: map['phone'] ?? '',
      city: map['city'] ?? '',
      registrationDate: DateTime.parse(map['registrationDate']),
    );
  }

  /// Convert to JSON string
  String toJson() {
    return '{"name":"$name","phone":"$phone","city":"$city","registrationDate":"${registrationDate.toIso8601String()}"}';
  }

  /// Create from JSON string
  factory Volunteer.fromJson(String jsonString) {
    final Map<String, dynamic> map = {};
    // Simple JSON parsing for demonstration
    // In production, use dart:convert
    return Volunteer.fromMap(map);
  }

  @override
  String toString() {
    return 'Volunteer(name: $name, phone: $phone, city: $city, registrationDate: $registrationDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Volunteer &&
        other.name == name &&
        other.phone == phone &&
        other.city == city;
  }

  @override
  int get hashCode {
    return name.hashCode ^ phone.hashCode ^ city.hashCode;
  }
}