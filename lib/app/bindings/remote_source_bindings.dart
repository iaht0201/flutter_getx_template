import 'package:flutter_getx_template/app/modules/login/remote/login_remote_data_source.dart';
import 'package:flutter_getx_template/app/modules/login/remote/login_remote_data_source_impl.dart';
import 'package:get/get.dart';

import '/app/data/remote/github_remote_data_source.dart';
import '/app/data/remote/github_remote_data_source_impl.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GithubRemoteDataSource>(
      () => GithubRemoteDataSourceImpl(),
      tag: (GithubRemoteDataSource).toString(),
    );
    Get.lazyPut<LoginRemoteDataSource>(
      () => LoginRemoteDataSourceImpl(),
      tag: (LoginRemoteDataSource).toString(),
    );
  }
}
