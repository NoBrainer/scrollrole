import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/log_util.dart';

const JsonDecoder _decoder = JsonDecoder();

class MapperUtil {
  static Map<String, dynamic> stringToJson(String jsonString) {
    return _decoder.convert(jsonString);
  }

  static Enum jsonToEnum(
    String enumName,
    Map<Enum, dynamic> enumMap,
    String json,
  ) {
    try {
      json = json.toUpperCase();
      return $enumDecode(enumMap, json);
    } catch (e) {
      LogUtil.print(
        "Failed to parse $enumName!\n"
        "- Error: '$e'\n- Input: '$json'",
      );
      rethrow;
    }
  }
}
