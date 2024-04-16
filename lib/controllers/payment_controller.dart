import 'package:coffe_shop/models/payment_card.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  //!definitions
  final List<String> _methods = [
    'card',
    'paypal',
    'visa',
    'cash',
  ];

  PaymentCard? _temporaryCard;

  final List<PaymentCard> _paymentCards = [];
  int _selectedMethodIndex = 0;

  //!getters
  List<String> get methods => _methods;
  int get selectedMethodIndex => _selectedMethodIndex;
  PaymentCard? get temporaryCard => _temporaryCard;

  //!setters
  set setTemporaryCard(PaymentCard card) {
    _temporaryCard = card;
  }

  //!methods
  void setMethod(int index) {
    _selectedMethodIndex = index;
    update();
  }

  void addPaymentCard(PaymentCard paymentCard) {
    _paymentCards.add(paymentCard);
    update();
  }
}
