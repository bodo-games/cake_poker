import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum FocusTarget {
  all,
  board,
}

extension FocusTargetExt on FocusTarget {
  static final rawValues = {
    FocusTarget.all: 0,
    FocusTarget.board: 1,
  };

  int get rawValue => rawValues[this]!;

  static FocusTarget? from(int rawValue) {
    final member =
        rawValues.keys.firstWhereOrNull((key) => rawValues[key] == rawValue);
    return member;
  }
}

class FocusTargetConverter implements JsonConverter<FocusTarget?, int?> {
  const FocusTargetConverter();
  @override
  FocusTarget? fromJson(int? rawValue) => FocusTargetExt.from(rawValue ?? -1);

  @override
  int? toJson(FocusTarget? member) => member?.rawValue;
}
