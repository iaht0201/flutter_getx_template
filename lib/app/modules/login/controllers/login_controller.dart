import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:flutter_getx_template/app/modules/login/repository/login_responsitory.dart';
import 'package:flutter_getx_template/app/modules/login/request/login_request.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  //TODO: Implement LoginController
  final LoginRepository _repository =
      Get.find(tag: (LoginRepository).toString());
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void login(LoginRequest queryParam) {
    print(queryParam);
    var githubRepoSearchService = _repository.login(queryParam);
    print(githubRepoSearchService);

    callDataService(
      githubRepoSearchService,
      onSuccess: (response) {
        print(response.token);
      },
    );
  }
}
