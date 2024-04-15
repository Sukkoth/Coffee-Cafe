import 'package:coffe_shop/guards/auth_guard.dart';
import 'package:coffe_shop/pages/auth/forgot_password_page.dart';
import 'package:coffe_shop/pages/auth/login_page.dart';
import 'package:coffe_shop/pages/auth/register_page.dart';
import 'package:coffe_shop/pages/auth/reset_password.dart';
import 'package:coffe_shop/pages/auth/verification_page.dart';
import 'package:coffe_shop/pages/index_page.dart';
import 'package:coffe_shop/pages/product_details.dart';
import 'package:coffe_shop/pages/profile.dart';
import 'package:get/get.dart';

class Routes {
  static List<GetPage> get routes {
    return _list;
  }

  static String login = '/login';
  static String register = '/register';
  static String forgotPassword = '/forgot-password';
  static String verification = '/verification';
  static String resetPassword = '/reset-password';

  static String home = '/';
  static get product => _ProductRoutes();
  static get profile => _ProfileRoutes();
}

//routes for products
class _ProductRoutes {
  final String _base;
  _ProductRoutes() : _base = '/products';

  String get detailsDefinition => '$_base/details/:product_id';
  String get details => '$_base/details';
}

class _ProfileRoutes {
  final String _base;
  _ProfileRoutes() : _base = '/profile';
  String get index => _base;
}

List<GetPage> _list = [
  GetPage(
    name: Routes.login,
    page: () => const LoginPage(),
  ),
  GetPage(
    name: Routes.register,
    page: () => const RegisterPage(),
  ),
  GetPage(
    name: Routes.forgotPassword,
    page: () => const ForgotPasswordPage(),
  ),
  GetPage(
    name: Routes.verification,
    page: () => const VerificationPage(),
  ),
  GetPage(
    name: Routes.resetPassword,
    page: () => const ResetPasswordPage(),
  ),
  GetPage(
    name: Routes.home,
    page: () => IndexPage(),
    middlewares: [
      AuthMiddleware(),
    ],
  ),
  GetPage(
    name: Routes.product.detailsDefinition,
    page: () => const ProductDetails(),
  ),
  GetPage(
    name: Routes.profile.index,
    page: () => const ProfilePage(),
  ),
];
