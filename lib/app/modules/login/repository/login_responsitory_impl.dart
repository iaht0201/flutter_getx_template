import 'package:flutter_getx_template/app/modules/login/models/login_user_model.dart';
import 'package:flutter_getx_template/app/modules/login/remote/login_remote_data_source.dart';
import 'package:flutter_getx_template/app/modules/login/repository/login_responsitory.dart';
import 'package:flutter_getx_template/app/modules/login/request/login_request.dart';
import 'package:get/get.dart';

class LoginRepositoryImpl implements LoginRepository {
  // lien ket voi remote 
  final LoginRemoteDataSource _remoteSource =
      Get.find(tag: (LoginRemoteDataSource).toString());

  @override
  Future<LoginUser> login(LoginRequest queryParam) {
    return _remoteSource.login(queryParam);
  }
}
