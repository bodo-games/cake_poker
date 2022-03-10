//
//
//

import 'package:cake_poker/src/state/cakepoker_ui_state.dart';
import 'package:cake_poker/src/types/game_message.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:riverpod/riverpod.dart';

class PlayerDidPutReceiver {
  final Reader read;
  PlayerDidPutReceiver(this.read);

  onReceivePlayerDidPut(GameMessage message) async {
    final seat = message.trigger_seat!;
    // TODO: - Uiステートの方を参照する
    final oldUiState = read(cakepokerUiState);
    final oldSideUiState =
        oldUiState.uiSides.firstWhere((uiSide) => uiSide.seat.rawValue == seat);
    final newSideUiState = oldSideUiState.copyWith(
      putCardId: PlayingCard.back,
      putCardDegree: 90,
    );
    var newUiSides = List.of(oldUiState.uiSides);
    newUiSides.removeWhere((uiSide) => uiSide.seat.rawValue == seat);
    newUiSides.add(newSideUiState);
    final newUiState = oldUiState.copyWith(uiSides: newUiSides);
    read(cakepokerUiState.notifier).update(newUiState);
    await Future.delayed(const Duration(seconds: 1));
  }
}
