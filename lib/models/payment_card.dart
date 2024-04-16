import 'package:uuid/uuid.dart';

var _generateId = const Uuid().v4;

class PaymentCard {
  final String id;
  final String name;
  final String cardNumber;
  final DateTime expiryDate;
  final String cvv;

  PaymentCard({
    required this.name,
    required this.cardNumber,
    required this.expiryDate,
    required this.cvv,
  }) : id = _generateId();
}
