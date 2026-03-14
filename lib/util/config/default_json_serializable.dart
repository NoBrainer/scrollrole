import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/mapper_util.dart';

/// Extend [JsonSerializable] with a default configuration.
class DefaultJsonSerializable extends JsonSerializable {
  const DefaultJsonSerializable()
    : super(explicitToJson: true, converters: MapperUtil.commonConverters);
}
