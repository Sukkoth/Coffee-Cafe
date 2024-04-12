import 'package:uuid/uuid.dart';

const generateId = Uuid();

enum UserStatus { active, disabled, banned }

class User {
  String id;
  String fullName;
  String email;
  UserStatus status;

  User(
      {required this.fullName,
      required this.email,
      this.status = UserStatus.active})
      : id = generateId.v4();
}
