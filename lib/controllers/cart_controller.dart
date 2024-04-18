import 'package:coffe_shop/controllers/categroy_controller.dart';
import 'package:coffe_shop/models/cart.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final _cart = <Cart>[].obs;

  //getters
  List<Cart> get cart => _cart;
  //add
  void addToCart(String cartId) {
    _cart.add(Cart(
        menuItem: CategoryController()
            .getAllMenuItems
            .firstWhere((cartItem) => cartItem.id == cartId)));
    print("🚀🚀 added to cart");
  }

  //remove or increment quantity
  void handleQuantity(String cartId, CartQuantityOptions option) {
    //increment
    if (option == CartQuantityOptions.increment) {
      _cart.map(
          (cartItem) => cartItem.id == cartId ? ++cartItem.quantity : cartItem);
    } else {
      Cart cartItem = _cart.firstWhere((cartItem) => cartItem.id == cartId);
      if (cartItem.quantity > 1) {
        //decrease
      } else {
        // remove from cart
      }
    }
    //decrement
    //dec
    //remove
  }
  //quantity
}
