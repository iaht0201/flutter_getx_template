import 'package:flutter_getx_template/app/modules/login/remote/login_remote_data_source.dart';
import 'package:flutter_getx_template/app/modules/login/remote/login_remote_data_source_impl.dart';
import 'package:flutter_getx_template/app/modules/login/repository/login_responsitory.dart';
import 'package:flutter_getx_template/app/modules/login/repository/login_responsitory_impl.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
