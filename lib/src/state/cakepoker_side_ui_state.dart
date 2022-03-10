import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cakepoker_side_ui_state.freezed.dart';
part 'cakepoker_side_ui_state.g.dart';

@freezed
class CakepokerSideUiState with _$CakepokerSideUiState {
  const CakepokerSideUiState._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CakepokerSideUiState({
    @SeatConverter() required Seat seat,
    @PlayingCardConverter() required PlayingCard? putCardId,
    required double putCardDegree,
  }) = _CakepokerSideUiState;

  factory CakepokerSideUiState.fromJson(Map<String, dynamic> json) =>
      _$CakepokerSideUiStateFromJson(json);
}
