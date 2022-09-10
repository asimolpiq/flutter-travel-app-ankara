import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Login View'),
          const Placeholder(
            fallbackHeight: 200,
            fallbackWidth: 200,
          ),
          const Text("Login"),
          buildTextFormField(
            editingController: emailController,
            icon: const Icon(Icons.mail_outlined),
            hintText: "Email ID",
            textEditingType: TextEditingType.email,
          ),
          const SizedBox(height: 16),
          buildTextFormField(
            editingController: passwordController,
            icon: const Icon(Icons.password_outlined),
            hintText: "Password",
            textEditingType: TextEditingType.password,
          ),
        ],
      ),
    );
  }

  Widget buildTextFormField({
    required TextEditingController editingController,
    required Icon icon,
    required String hintText,
    required TextEditingType textEditingType,
  }) {
    return Padding(
      padding: horizontalNormalPadding,
      child: TextFormField(
        controller: editingController,
        decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black.withOpacity(.2)),
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: blueColor)),
          hintText: hintText,
          icon: icon,
        ),
      ),
    );
  }

  EdgeInsets get horizontalNormalPadding =>
      const EdgeInsets.symmetric(horizontal: 16.0);

  Color get blueColor => const Color(0xFF0164FF);
}

enum TextEditingType {
  email,
  password,
}
