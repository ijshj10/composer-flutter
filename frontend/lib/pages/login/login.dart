import 'package:flutter/material.dart';
import 'package:frontend/constants/style.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryBackground,
        body: SafeArea(
            child: _MainView(
          usernameController: _usernameController,
          passwordController: _passwordController,
        )));
  }
}

class _MainView extends StatelessWidget {
  const _MainView({
    Key? key,
    required this.usernameController,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Username"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: () {
                      Get.offAndToNamed("/");
                    },
                    child: Text("Log In")))
          ],
        ),
      ),
    );
  }
}
