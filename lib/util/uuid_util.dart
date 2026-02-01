import 'package:uuid/uuid.dart';

class UuidUtil {
  static final Uuid _uuid = Uuid();
  static const String defaultName = 'scrollrole.com';

  static String generate({String name = defaultName}) {
    return _uuid.v5(Namespace.url.value, name);
  }
}
