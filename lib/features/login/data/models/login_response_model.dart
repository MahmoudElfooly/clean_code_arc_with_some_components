import 'package:simple_app/core/extensions/buildcontext_extensions.dart';

import '../../../../main.dart';

class LoginResponseModel {
  bool? success;
  String? messageAr;
  String? messageEn;
  int? statusCode;
  String? get message =>
      navigatorKey.currentContext!.isEnglish ? messageEn : messageAr;

  LoginResponseModel({
    this.success,
    this.messageAr,
    this.messageEn,
    this.statusCode,
  });

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    messageAr = json['messageAr'];
    messageEn = json['messageEn'];
    statusCode = json['statusCode'];
  }
}
