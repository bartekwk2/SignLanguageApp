import 'package:inz/models/enum/gender.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String mail;
  final String name;
  final int age;
  final Gender gender;

  User({this.id, this.mail, this.name, this.age, this.gender});

  factory User.empty() {
    return User(id: "", mail: "", name: "", age: 0, gender: Gender.female);
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
