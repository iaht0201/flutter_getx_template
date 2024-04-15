import 'package:get/get.dart';

import '../models/login_user_model.dart';

class LoginUserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return LoginUser.fromJson(map);
      if (map is List)
        return map.map((item) => LoginUser.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<LoginUser?> getLoginUser(int id) async {
    final response = await get('loginuser/$id');

    return response.body;
  }

  Future<Response<LoginUser>> postLoginUser(LoginUser loginuser) async =>
      await post('loginuser', loginuser);
  Future<Response> deleteLoginUser(int id) async =>
      await delete('loginuser/$id');
}
