import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/log_util.dart';

const JsonDecoder _decoder = JsonDecoder();

class MapperUtil {
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
        'Failed to parse $enumName!\n'
        "- Error: '$e'\n"
        "- Input: '$json'",
      );
      rethrow;
    }
  }

  static Object jsonToObject(
    String objectName,
    Function fromJson,
    Map<String, dynamic> json, {
    Function? validate,
  }) {
    try {
      Object obj = fromJson(json);
      if (validate != null) {
        validate(obj);
      }
      return obj;
    } catch (e) {
      LogUtil.print(
        'Failed to parse $objectName!\n'
        "- Error: '$e'\n"
        '- Input: $json',
      );
      rethrow;
    }
  }

  static Map<String, dynamic> stringToJson(String jsonString) {
    return _decoder.convert(jsonString);
  }

  static const List<JsonConverter> commonConverters = [StringTrimConverter()];
}

/// Ensure Strings are trimmed when serialized and deserialized.
class StringTrimConverter implements JsonConverter<String, String> {
  const StringTrimConverter();

  @override
  String fromJson(String json) {
    return json.trim();
  }

  @override
  String toJson(String str) {
    return str.trim();
  }
}
