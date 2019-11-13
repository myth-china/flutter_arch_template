import 'package:dio/dio.dart';

class MythResponse {
  static const NET_DISCONNECT = -1;
  static const NET_SERVER_ERROR = -2;
  static const NET_ERROR = -4;

  final Response response;
  final bool isSuccess;
  final dynamic errCode;
  final dynamic errMsg;
  final dynamic data;

  MythResponse(
    this.response,
    this.isSuccess,
    this.errCode,
    this.errMsg,
    this.data,
  );

  MythResponse.success(
    this.response,
    this.data,
  )   : this.isSuccess = true,
        this.errCode = 0,
        this.errMsg = null;

  MythResponse.failure(
    this.response,
    this.errCode,
    this.errMsg,
  )   : this.isSuccess = false,
        this.data = null;
}
