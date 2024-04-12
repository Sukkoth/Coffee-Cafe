import 'package:coffe_shop/constants.dart';
import 'package:coffe_shop/controllers/auth_controller.dart';
import 'package:coffe_shop/routes.dart';
import 'package:coffe_shop/widgets/buttons/button.dart';
import 'package:coffe_shop/widgets/inputs/ctext_input.dart';
import 'package:coffe_shop/widgets/login_socials/login_socials.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  AuthController authController = Get.put(AuthController());

  final formKey = GlobalKey<FormState>();

  TextEditingController namecontroller = TextEditingController();

  TextEditingController emailcontroller = TextEditingController();

  TextEditingController passwordcontroller = TextEditingController();

  void _handleRegistration() {
    authController.registerUser(
        fullName: namecontroller.text,
        email: emailcontroller.text,
        password: passwordcontroller.text);
    Get.toNamed(Routes.home);
  }

  @override
  void dispose() {
    namecontroller.dispose();
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
          CTextInput(
            label: "Name",
            hint: "Enter your full name",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Field should not be empty";
              } else {
                return null;
              }
            },
            controller: namecontroller,
          ),
          const SizedBox(
            height: 15,
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
            children: [
              Checkbox(
                  value: true,
                  activeColor: MyColors.primary,
                  onChanged: (val) {}),
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
          const SizedBox(
            height: 15,
          ),
          CButton(
            onPressed: () {
              //on successful validation
              if (formKey.currentState!.validate()) {
                _handleRegistration();
              }
            },
            text: "Sign Up",
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
