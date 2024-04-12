import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/controllers/auth_controller.dart';
import 'package:coffe_shop/routes.dart';
import 'package:coffe_shop/widgets/buttons/button.dart';
import 'package:coffe_shop/widgets/inputs/ctext_input.dart';
import 'package:coffe_shop/widgets/login_socials/login_socials.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();
  final AuthController _authController = Get.put(AuthController());
  TextEditingController emailcontroller = TextEditingController();

  TextEditingController passwordcontroller = TextEditingController();

  void _handleLogin() {
    bool isLoggedIn = _authController.loginUser(
        emailcontroller.text, passwordcontroller.text);
    if (isLoggedIn) Get.offAndToNamed(Routes.home);
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GetBuilder<AuthController>(builder: (_) {
            return Text(
              Get.find<AuthController>().errorMessage ?? "",
              style: Typo.style(
                color: MyColors.teritiary,
                fontWeight: FontWeight.w500,
              ),
            );
          }),
          const SizedBox(
            height: 5,
          ),
          CTextInput(
            label: "Email",
            hint: "Enter your email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Field should not be empty";
              } else {
                return null;
              }
            },
            controller: emailcontroller,
          ),
          const SizedBox(
            height: 15,
          ),
          CTextInput(
            label: "Password",
            hint: "Enter your password",
            obscure: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Field should not be empty";
              } else {
                return null;
              }
            },
            controller: passwordcontroller,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      value: true,
                      activeColor: MyColors.primary,
                      onChanged: (val) {
                        print(val);
                      }),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Remember me",
                      style: Typo.style(
                        color: MyColors.shade5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.forgotPassword);
                  },
                  child: Text(
                    "Forgot Password?",
                    style: Typo.style(
                        color: MyColors.primary,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline),
                  ))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          CButton(
            onPressed: () {
              //on successful validation
              if (formKey.currentState!.validate()) {
                _handleLogin();
              }
            },
            text: "Sign In",
          ),
          const SizedBox(
            height: 20,
          ),
          const LoginSocials(),
        ],
      ),
    );
  }
}
