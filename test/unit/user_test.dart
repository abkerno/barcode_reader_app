// test/user_test.dart

import 'package:flutter_test/flutter_test.dart';

class User {
  final String id;
  final String email;
  final int age;

  User({required this.id, required this.email, required this.age});

  Map<String, dynamic> toJson() {
    return {'id': id, 'email': email, 'age': age};
  }

  static User fromJson(Map<String, dynamic> json) {
    return User(id: json['id'], email: json['email'], age: json['age']);
  }
}

void main() {
  group('User Model Unit Test', () {
    test('Should create a valid User instance', () {
      final user = User(id: '1', email: 'john@example.com', age: 30);

      expect(user.id, equals('1'));
      expect(user.email, equals('john@example.com'));
      expect(user.age, equals(30));
    });

    test('Should convert User instance to JSON', () {
      final user = User(id: '2', email: 'alice@example.com', age: 25);
      final json = user.toJson();

      expect(json, isA<Map<String, dynamic>>());
      expect(json['id'], equals('2'));
      expect(json['email'], equals('alice@example.com'));
      expect(json['age'], equals(25));
    });

    test('Should create User instance from JSON', () {
      final json = {'id': '3', 'email': 'bob@example.com', 'age': 28};
      final user = User.fromJson(json);

      expect(user.id, equals('3'));
      expect(user.email, equals('bob@example.com'));
      expect(user.age, equals(28));
    });

    test('User model test', () {
      final user = User(id: '123', email: 'test@example.com', age: 25);
      expect(user.id, '123');
      expect(user.email, 'test@example.com');
      expect(user.age, 25);
    });
  });
}
