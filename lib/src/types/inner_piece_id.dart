//
//
//

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum InnerPieceId {
  club,
  heart,
  joker,
  diamond,
}

extension InnerPieceIdExt on InnerPieceId {
  static final Map<InnerPieceId, int> rawValues = {
    InnerPieceId.club: 4,
    InnerPieceId.heart: 2,
    InnerPieceId.joker: 99,
    InnerPieceId.diamond: 3,
  };

  int get rawValue => rawValues[this]!;

  static InnerPieceId? from(int rawValue) {
    final member = InnerPieceIdExt.rawValues.keys
        .firstWhereOrNull((key) => InnerPieceIdExt.rawValues[key] == rawValue);
    return member;
  }
}

class InnerPieceIdConverter implements JsonConverter<InnerPieceId?, int?> {
  const InnerPieceIdConverter();
  @override
  InnerPieceId? fromJson(int? rawValue) => InnerPieceIdExt.from(rawValue ?? -1);

  @override
  int? toJson(InnerPieceId? member) => member?.rawValue;
}
