// lib/data/models/user_data.dart

/// Represents user data in the system.
class UserData {
  final String id;
  final String name;
  final String email;
  final DateTime createdAt;

  UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.createdAt,
  });

  /// Converts a `UserData` object to a map for easy JSON conversion.
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "createdAt": createdAt.toIso8601String(),
    };
  }

  /// Creates a `UserData` object from a JSON map.
  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      createdAt: DateTime.parse(json["createdAt"]),
    );
  }
}
