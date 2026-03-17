class StringUtil {
  /// Capitalize the first letter of each word.
  ///
  /// Note: This trims the string and reduces multiple whitespace characters to
  /// a single space.
  static String capitalize(String s) {
    return s.split('\\s+').map((w) {
      if (w.length == 1) {
        return w.toUpperCase();
      }
      String first = w.substring(0, 1);
      String rest = w.substring(1);

      return '${first.toUpperCase()}${rest.toLowerCase()}';
    }).join();
  }
}
