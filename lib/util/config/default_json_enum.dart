import 'package:json_annotation/json_annotation.dart';

/// Extend [JsonEnum] with a default configuration.
class DefaultJsonEnum extends JsonEnum {
  const DefaultJsonEnum()
    : super(alwaysCreate: true, fieldRename: FieldRename.screamingSnake);
}
