import 'dart:convert';

const JsonDecoder _decoder = JsonDecoder();

class ConversionUtil {
  static Map<String, dynamic> stringToJson(String jsonString) {
    return _decoder.convert(jsonString);
  }
}
