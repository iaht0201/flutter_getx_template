import 'package:flutter_getx_template/app/modules/login/repository/login_responsitory.dart';
import 'package:flutter_getx_template/app/modules/login/repository/login_responsitory_impl.dart';
import 'package:get/get.dart';

import '/app/data/repository/github_repository.dart';
import '/app/data/repository/github_repository_impl.dart';

class RepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GithubRepository>(
      () => GithubRepositoryImpl(),
      tag: (GithubRepository).toString(),
    );
    Get.lazyPut<LoginRepository>(
      () => LoginRepositoryImpl(),
      tag: (LoginRepository).toString(),
    );
  }
}
