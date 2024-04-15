import 'package:flutter_getx_template/app/modules/login/models/login_user_model.dart';
import 'package:flutter_getx_template/app/modules/login/request/login_request.dart';

abstract class LoginRepository {
  Future<LoginUser> login(LoginRequest queryParam);
}
