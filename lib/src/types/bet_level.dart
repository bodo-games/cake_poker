//
//
//

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum BetLevel {
  min,
  mid,
  max,
}

extension BetLevelExt on BetLevel {
  static final Map<BetLevel, int> rawValues = {
    BetLevel.min: 0,
    BetLevel.mid: 1,
    BetLevel.max: 2,
  };

  int get rawValue => rawValues[this]!;

  static BetLevel? from(int rawValue) {
    final member = BetLevelExt.rawValues.keys
        .firstWhereOrNull((key) => BetLevelExt.rawValues[key] == rawValue);
    return member;
  }
}

class BetLevelConverter implements JsonConverter<BetLevel?, int?> {
  const BetLevelConverter();
  @override
  BetLevel? fromJson(int? rawValue) => BetLevelExt.from(rawValue ?? -1);

  @override
  int? toJson(BetLevel? member) => member?.rawValue;
}
