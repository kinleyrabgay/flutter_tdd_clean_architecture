import 'dart:convert';
import 'package:tdd_clean_architecture_sample/core/types/typedef.dart';
import 'package:tdd_clean_architecture_sample/features/authentication/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.name,
    required super.email,
  });

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  UserModel.fromMap(DataMap map)
      : super(
          name: map['name'] ?? '',
          email: map['email'] ?? '',
        );

  DataMap toMap() {
    return {
      'name': name,
      'emal': email,
    };
  }

  String toJson() => json.encode(toMap());

  UserModel copyWith({
    String? token,
    String? name,
    String? avatar,
    String? email,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  const UserModel.empty()
      : this(
          name: '',
          email: '',
        );
}
