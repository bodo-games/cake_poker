//
//
//

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum Combo {
  // initial
  start,
  // need 3
  rsf,
  sf,
  fullHouse,
  flush,
  straight,
  twoPairs,
  double,
  triple,
  miracle,
  // need 2
  kingJoker,
  numberPair,
  suitPair,
  // need 1
  joker,
  // need 0
  noPairs,
}

extension ComboExt on Combo {
  static final Map<Combo, int> rawValues = {
    Combo.start: 0,
    Combo.rsf: 1,
    Combo.sf: 2,
    Combo.fullHouse: 3,
    Combo.flush: 4,
    Combo.straight: 5,
    Combo.twoPairs: 6,
    Combo.double: 7,
    Combo.triple: 8,
    Combo.miracle: 9,
    Combo.kingJoker: 10,
    Combo.numberPair: 11,
    Combo.suitPair: 12,
    Combo.joker: 13,
    Combo.noPairs: 14,
  };
  int get rawValue => rawValues[this]!;
  static Combo? from(int rawValue) {
    final member = ComboExt.rawValues.keys
        .firstWhereOrNull((key) => ComboExt.rawValues[key] == rawValue);
    return member;
  }
}

class ComboConverter implements JsonConverter<Combo?, int?> {
  const ComboConverter();
  @override
  Combo? fromJson(int? rawValue) => ComboExt.from(rawValue ?? -1);

  @override
  int? toJson(Combo? member) => member?.rawValue;
}
