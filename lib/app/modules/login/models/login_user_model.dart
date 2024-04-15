class LoginUser {
  String? token;

  LoginUser({this.token});

  LoginUser.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['token'] = token;

    return data;
  }
}
