//
//
//

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum OuterPieceId {
  diamond12,
  club11,
  spade13,
  heart1,
}

extension OuterPieceIdExt on OuterPieceId {
  static final Map<OuterPieceId, int> rawValues = {
    OuterPieceId.diamond12: 312,
    OuterPieceId.club11: 411,
    OuterPieceId.spade13: 113,
    OuterPieceId.heart1: 201,
  };
  int get rawValue => rawValues[this]!;
  static OuterPieceId? from(int rawValue) {
    final member = OuterPieceIdExt.rawValues.keys
        .firstWhereOrNull((key) => OuterPieceIdExt.rawValues[key] == rawValue);
    return member;
  }
}

class OuterPieceIdConverter implements JsonConverter<OuterPieceId?, int?> {
  const OuterPieceIdConverter();
  @override
  OuterPieceId? fromJson(int? rawValue) => OuterPieceIdExt.from(rawValue ?? -1);

  @override
  int? toJson(OuterPieceId? member) => member?.rawValue;
}
