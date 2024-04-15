import 'package:coffe_shop/models/user.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  bool isLoggedIn = true;
  String? token = 'asdklfja;bcbfj;a kfjca;nkdjfc;a';
  User? user;
  bool rememberMe = false;
  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  final List<User> _usersDb = [
    User(fullName: "Gadisa Teklu", email: "gadisa@gmail.com"),
    User(fullName: "Sukkoth Terfasa", email: "suukoot@gmail.com"),
  ];

  bool loginUser(String email, String password) {
    _errorMessage = null;
    //check if user exists in db
    User? user =
        _usersDb.firstWhereOrNull((user) => user.email.toLowerCase() == email);

    if (user == null) {
      _errorMessage = "INCORRECT CREDENTIAL";
      print("NOT MATCHING EMAIL");
      update();
      return false;
    } else {
      _errorMessage = null;

      isLoggedIn = true;
      token = generateId.v4();
      print("User found, ${user.fullName}, token, $token");
      update();
      return true;
    }
  }

  void logoutUser() {
    isLoggedIn = false;
    token = null;
    update();
  }

  void registerUser(
      {required String fullName,
      required String email,
      required String password}) {
    _errorMessage = null;
    //set user
    user = User(fullName: fullName, email: email);
    isLoggedIn = true;
    token = generateId.v4();
    print("User, ${user?.fullName}, token, $token");
    update();

    //set boolean  isLoggedIn
  }
}
