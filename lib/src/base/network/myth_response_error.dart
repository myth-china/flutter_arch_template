import 'package:json_annotation/json_annotation.dart';

part 'myth_response_error.g.dart';

@JsonSerializable()
class ResponseError {
  ResponseError(this.errCode, this.errMsg);

  String errCode;
  String errMsg;
}
