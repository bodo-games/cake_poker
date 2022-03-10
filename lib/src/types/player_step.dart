//
//
//
import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum PlayerStep {
  bet,
  waitingShuffle,
  put,
  waitingShowdown,
}

extension PlayerStepExt on PlayerStep {
  static final Map<PlayerStep, int> rawValues = {
    PlayerStep.bet: 0,
    PlayerStep.waitingShuffle: 1,
    PlayerStep.put: 2,
    PlayerStep.waitingShowdown: 3,
  };
  int get rawValue => rawValues[this]!;
  static PlayerStep? from(int rawValue) {
    final member = PlayerStepExt.rawValues.keys
        .firstWhereOrNull((key) => PlayerStepExt.rawValues[key] == rawValue);
    return member;
  }
}

class PlayerStepConverter implements JsonConverter<PlayerStep?, int?> {
  const PlayerStepConverter();
  @override
  PlayerStep? fromJson(int? rawValue) => PlayerStepExt.from(rawValue ?? -1);

  @override
  int? toJson(PlayerStep? member) => member?.rawValue;
}
