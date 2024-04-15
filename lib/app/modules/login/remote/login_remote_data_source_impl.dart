import 'package:dio/dio.dart';
import 'package:flutter_getx_template/app/modules/login/models/login_user_model.dart';
import 'package:flutter_getx_template/app/modules/login/remote/login_remote_data_source.dart';
import 'package:flutter_getx_template/app/modules/login/request/login_request.dart';

import '/app/core/base/base_remote_source.dart';

// file nay thuc hien chau cac ma trien khai fetch tu remote ve
class LoginRemoteDataSourceImpl extends BaseRemoteSource
// GithubRemoteDataSourceImpl
    implements
        LoginRemoteDataSource {
  @override
  Future<LoginUser> login(LoginRequest queryParam) {
    var endpoint = "https://fakestoreapi.com/auth/login";
    var dioCall = dioClient.post(
      endpoint,
      data: queryParam.toJson(),
      options: Options(
        headers: {
          'Content-Type': 'application/json', // header Content-Type
          'Custom-Header': 'value', // header tùy chỉnh (nếu cần)
        },
      ),
    );

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => LoginUser.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }
}
