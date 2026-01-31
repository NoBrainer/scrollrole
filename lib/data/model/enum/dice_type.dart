import 'package:json_annotation/json_annotation.dart';
import 'package:scrollrole/util/mapper_util.dart';

part 'dice_type.g.dart';

/// Dice types supported with a standard set of dice.
/// The non-standard dice types can be be simulated by halving a standard die.
@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.screamingSnake)
enum DiceType {
  d2('D2'),
  d3('D3'),
  d4('D4'),
  d5('D5'),
  d6('D6'),
  d8('D8'),
  d10('D10'),
  d12('D12'),
  d20('D20'),
  d25('D25'),
  d50('D50'),
  d100('D100');

  final String display;

  const DiceType(this.display);

  factory DiceType.fromJson(String json) {
    return MapperUtil.jsonToEnum('DiceType', _$DiceTypeEnumMap, json)
        as DiceType;
  }

  String toJson() => _$DiceTypeEnumMap[this]!;
}
