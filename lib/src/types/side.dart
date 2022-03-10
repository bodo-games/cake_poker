//
//
//

import 'package:cake_poker/src/types/bet_level.dart';
import 'package:cake_poker/src/types/combo.dart';
import 'package:cake_poker/src/types/player_step.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'side.freezed.dart';
part 'side.g.dart';

@freezed
class Side with _$Side {
  const Side._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Side({
    @SeatConverter() required Seat seat,
    @PlayerStepConverter() required PlayerStep playerStep,
    required int chips,
    @PlayingCardConverter() required List<PlayingCard> handCardIds,
    @BetLevelConverter() required BetLevel? betLevel,
    @PlayingCardConverter() required PlayingCard? putCardId,
    @ComboConverter() required Combo lastCombo,
  }) = _Side;

  factory Side.fromJson(Map<String, dynamic> json) => _$SideFromJson(json);
}
