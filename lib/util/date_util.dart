class DateUtil {
  /// Get current local date in the format of `yyyy-MM-dd`
  static String currentDate() {
    var now = DateTime.now();
    return "${now.year}-${now.month < 10 ? "0" : ""}${now.month}-"
        "${now.day < 10 ? "0" : ""}${now.day}";
  }

  /// Get current local date & time in the format of `yyyy-MM-ddTHH:mm:ss`
  static String currentDateTime() {
    var now = DateTime.now();
    return "${now.year}-${now.month < 10 ? "0" : ""}${now.month}-"
        "${now.day < 10 ? "0" : ""}${now.day}T"
        "${now.hour < 10 ? "0" : ""}${now.hour}:"
        "${now.minute < 10 ? "0" : ""}${now.minute}:"
        "${now.second < 10 ? "0" : ""}${now.second}";
  }
}
