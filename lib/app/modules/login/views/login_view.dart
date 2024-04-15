import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_getx_template/app/modules/login/request/login_request.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController _loginController = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          LoginRequest queryParam =
              LoginRequest(username: "mor_2314", password: "83r5^_");
          _loginController.login(queryParam);
        },
        child: Container(
          child: Text("Đăng nhập"),
        ),
      )),
    );
  }
}
