import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app_getx/controllers/auth_controller.dart';

class SignupPage extends GetWidget<AuthOperations> {
   SignupPage({Key? key}) : super(key: key);

  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Sign up"),
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
                controller.signUp(mailController.text, passController.text);
              }, child: Text("Sign up")),
            ],
          ),
        ),
      ),
    );
  }
}
