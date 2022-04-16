import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import 'signup_page.dart';

class LoginPage extends GetWidget<AuthOperations>{
   LoginPage({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              ElevatedButton(onPressed: () {

                controller.signIn(emailController.text, passwordController.text);
              }, child: Text("Login")),
              TextButton(onPressed: () {
                Get.to(() => SignupPage());
              }, child: Text("Sign up"))
            ],
          ),
        ),
      ),
    );
  }
}
