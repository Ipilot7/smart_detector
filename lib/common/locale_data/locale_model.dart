import 'package:hive_flutter/hive_flutter.dart';

part 'locale_model.g.dart';

@HiveType(typeId: 0)
class LocaleModel {
  @HiveField(0)
  String? message;
  @HiveField(1)
  String? refreshToken;
  @HiveField(2)
  String? accessToken;

  LocaleModel({this.message, this.refreshToken, this.accessToken});

  LocaleModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    refreshToken = json['refresh_token'];
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['refresh_token'] = refreshToken;
    data['access_token'] = accessToken;
    return data;
  }
}
