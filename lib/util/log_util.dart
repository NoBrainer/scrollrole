import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';

const JsonDecoder _decoder = JsonDecoder();
const JsonEncoder _encoder = JsonEncoder.withIndent('  ');

class LogUtil {
  /// Print a message if in debug mode
  static void print(String? message) {
    if (kDebugMode && message != null) {
      log(message);
    }
  }

  /// Pretty print a JSON object with multiple print lines.
  static void logPrettyJson(String input) {
    var object = _decoder.convert(input);
    String prettyString = _encoder.convert(object);
    prettyString.split('\n').forEach((element) => print(element));
  }
}
