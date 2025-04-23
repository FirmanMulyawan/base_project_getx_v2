import 'dart:convert';

import 'package:dio/dio.dart';

class BaseErrorModel {
  String? innerMessage;
  String? message;
  int? code;
  List<Payload>? payload;

  BaseErrorModel({this.innerMessage, this.message, this.code, this.payload});

  BaseErrorModel.fromJson(Map<String, dynamic> json) {
    innerMessage = json['innerMessage'];
    message = json['message'];
    code = json['code'];
    if (json['payload'] != null) {
      payload = <Payload>[];
      json['payload'].forEach((v) {
        payload!.add(Payload.fromJson(v));
      });
    }
  }

  static Object handlerError(Exception e) {
    if (e is DioError) {
      final String errorString = e.response!.data!;
      final resp = BaseErrorModel.fromJson(jsonDecode(errorString));
      // return BaseErrorModel2(
      //     innerMessage: resp.innerMessage,
      //     code: resp.code,
      //     message: resp.message
      // );
      return resp;
    } else {
      return BaseErrorModel(innerMessage: '0', code: 0, message: e.toString());
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['innerMessage'] = innerMessage;
    data['message'] = message;
    data['code'] = code;
    if (payload != null) {
      data['payload'] = payload!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Payload {
  String? propertyName;
  String? attemptedValue;
  String? errorCode;
  String? message;

  Payload(
      {this.propertyName, this.attemptedValue, this.errorCode, this.message});

  Payload.fromJson(Map<String, dynamic> json) {
    propertyName = json['propertyName'];
    attemptedValue = json['attemptedValue'].toString();

    ///validasi jika ada return berbentuk int/double/others dari API
    errorCode = json['errorCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['propertyName'] = propertyName;
    data['attemptedValue'] = attemptedValue;
    data['errorCode'] = errorCode;
    data['message'] = message;
    return data;
  }
}
