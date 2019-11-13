// or new Dio with a Options instance.
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_arch_template/src/base/constant/host.dart';
import 'package:flutter_arch_template/src/base/widget/myth_toast.dart';

import 'myth_response.dart';

class MythDio {
  final Dio _dio = new Dio(new BaseOptions(
    baseUrl: host,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  ));

  static final MythDio _singleton = new MythDio._internal();

  factory MythDio() {
    return _singleton;
  }

  MythDio._internal() {
    _dio.options.contentType =
        ContentType.parse("application/x-www-form-urlencoded");
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options) async {
        Map<String, String> globalPram = {};
        globalPram["device"] = "android";

        /*CurrentUserVO currentUserVO = await UserCache.load();

        if (currentUserVO != null && currentUserVO.token != null) {
          globalPram["token"] = currentUserVO.token;
        }*/

        if (options.queryParameters != null) {
          options.queryParameters.addAll(globalPram);
          options.queryParameters.removeWhere((key, value) {
            if (value == null) {
              return true;
            }
            return false;
          });
        }

        if (options.data != null) {
          options.data.addAll(globalPram);
          options.data.removeWhere((key, value) {
            if (value == null) {
              return true;
            }
            return false;
          });
        }

        return options;
      },
      onResponse: (Response response) {
        return response;
      },
      onError: (DioError e) {
        return e;
      },
    ));

    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));
  }

  Future<MythResponse> get(
    String path, {
    Map<String, dynamic> params,
  }) async {
    return request(
      path,
      () {
        return _dio.get(path, queryParameters: params);
      },
    );
  }

  Future<MythResponse> post(
    String path, {
    Map<String, dynamic> data,
    Options options,
  }) async {
    return request(
      path,
      () {
        return _dio.post(
          path,
          data: data,
        );
      },
    );
  }

  Future<MythResponse> postMultipart(
    String path, {
    Map<String, dynamic> data,
    Options options,
  }) async {
    FormData formData = FormData.from(data);
    return request(
      path,
      () {
        return _dio.post(
          path,
          data: formData,
          options: options,
        );
      },
    );
  }

  Future<MythResponse> request(String path, Function internalRequest) async {
    MythResponse mythResp;
    try {
      Response response = await internalRequest();
      if (response == null) {
        mythResp =
            MythResponse.failure(response, MythResponse.NET_DISCONNECT, "网络异常");
      } else if (response.statusCode == 200) {
        if (response.data["status"] == "success") {
          mythResp = MythResponse.success(response, response.data["data"]);
        } else {
          mythResp = MythResponse.failure(
            response,
            response.data["data"]["errCode"],
            response.data["data"]["errMsg"],
          );
        }
      } else {
        mythResp = MythResponse.failure(
            response, MythResponse.NET_SERVER_ERROR, response.statusMessage);
      }
    } catch (e) {
      print(e);
      mythResp = MythResponse.failure(null, MythResponse.NET_ERROR, "网络连接失败");
    }

    if (!mythResp.isSuccess) {
      showShortToast(mythResp.errMsg);
    }

    return mythResp;
  }
}
