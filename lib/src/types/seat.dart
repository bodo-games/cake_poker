//
//
//

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum Seat {
  s1,
  s2,
  s3,
  s4,
}

extension SeatExt on Seat {
  static final Map<Seat, int> rawValues = {
    Seat.s1: 1,
    Seat.s2: 2,
    Seat.s3: 3,
    Seat.s4: 4,
  };
  int get rawValue => rawValues[this]!;
  static Seat? from(int rawValue) {
    final member = SeatExt.rawValues.keys
        .firstWhereOrNull((key) => SeatExt.rawValues[key] == rawValue);
    return member;
  }
}

class SeatConverter implements JsonConverter<Seat?, int?> {
  const SeatConverter();
  @override
  Seat? fromJson(int? rawValue) => SeatExt.from(rawValue ?? -1);

  @override
  int? toJson(Seat? member) => member?.rawValue;
}
