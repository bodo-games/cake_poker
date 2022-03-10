//
//
//

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum DealerStep {
  waitingBet,
  shuffle,
  waitingPut,
  showdown,
}

extension DealerStepExt on DealerStep {
  static final Map<DealerStep, int> rawValues = {
    DealerStep.waitingBet: 0,
    DealerStep.shuffle: 1,
    DealerStep.waitingPut: 2,
    DealerStep.showdown: 3,
  };
  int get rawValue => rawValues[this]!;
  static DealerStep? from(int rawValue) {
    final member = DealerStepExt.rawValues.keys
        .firstWhereOrNull((key) => DealerStepExt.rawValues[key] == rawValue);
    return member;
  }
}

class DealerStepConverter implements JsonConverter<DealerStep?, int?> {
  const DealerStepConverter();
  @override
  DealerStep? fromJson(int? rawValue) => DealerStepExt.from(rawValue ?? -1);

  @override
  int? toJson(DealerStep? member) => member?.rawValue;
}
