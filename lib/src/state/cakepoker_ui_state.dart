import 'package:cake_poker/src/cakepoker_core/initial_record.dart';
import 'package:cake_poker/src/state/cakepoker_side_ui_state.dart';
import 'package:cake_poker/src/types/bet_level.dart';
import 'package:cake_poker/src/types/focus_target.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
part 'cakepoker_ui_state.freezed.dart';
part 'cakepoker_ui_state.g.dart';

@freezed
class CakepokerUiState with _$CakepokerUiState {
  const CakepokerUiState._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CakepokerUiState({
    @FocusTargetConverter() required FocusTarget focusTarget,
    required bool waitingOthers,
    required bool canExit,
    required bool showExitModal,
    required double innerCakeDegree,
    required double outerCakeDegree,
    @PlayingCardConverter() required List<PlayingCard> dockHandCards,
    @BetLevelConverter() required List<BetLevel> dockBetLevels,
    required bool dockIsLocked,
    required PlayingCard? dockSelectedCard,
    required BetLevel? dockSelectedBetLevel,

    // Effect
    required bool spotlightMySide,
    required String? cardEffectImageName,
    required double cardEffectImageSize,
    required String? flatCardImageName,
    required String? flatOuterImageName,
    required String? flatInnerImageName,
    required String? comboName,
    required int comboNameWaveIndex,

    // sides
    required List<CakepokerSideUiState> uiSides,
  }) = _CakepokerUiState;

  factory CakepokerUiState.fromJson(Map<String, dynamic> json) =>
      _$CakepokerUiStateFromJson(json);
}

/// バインド
class _Notifier extends StateNotifier<CakepokerUiState> {
  _Notifier(CakepokerUiState state) : super(state);
  update(CakepokerUiState state) {
    this.state = state;
  }
}

/// 公開
final cakepokerUiState =
    StateNotifierProvider<_Notifier, CakepokerUiState>((ref) {
  // 初期化
  final initialState = CakepokerUiState(
    waitingOthers: true,
    canExit: true,
    showExitModal: true,
    innerCakeDegree: 0,
    outerCakeDegree: 0,
    dockHandCards: [],
    dockBetLevels: [],
    dockIsLocked: false,
    dockSelectedCard: null,
    dockSelectedBetLevel: null,

    // Effect
    spotlightMySide: true,
    cardEffectImageName: null,
    cardEffectImageSize: 0,
    flatCardImageName: null,
    flatOuterImageName: null,
    flatInnerImageName: null,
    comboName: null,
    comboNameWaveIndex: 0,
    focusTarget: FocusTarget.all,

    uiSides: initialRecord.sides.map(
      (side) {
        return CakepokerSideUiState(
          seat: side.seat,
          putCardId: null,
          putCardDegree: 0,
        );
      },
    ).toList(),
  );
  return _Notifier(initialState);
});
