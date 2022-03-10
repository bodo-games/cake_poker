//
//
//

import 'package:cake_poker/src/cakepoker_client/senders/player_will_put_sender.dart';
import 'package:cake_poker/src/state/cakepoker_ui_state.dart';
import 'package:cake_poker/src/state/game_room.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:riverpod/riverpod.dart';

class PutController {
  final Reader _read;
  PutController(this._read);

  onTapCard(PlayingCard cardId) {
    final oldState = _read(cakepokerUiState);
    final oldSelectedId = oldState.dockSelectedCard;
    if (oldSelectedId == cardId) {
      // すでに選択されているカードをまたタップされた時
      final newState = oldState.copyWith(dockSelectedCard: null);
      _read(cakepokerUiState.notifier).update(newState);
    } else {
      final newState = oldState.copyWith(dockSelectedCard: cardId);
      _read(cakepokerUiState.notifier).update(newState);
    }
  }

  onTapPutButton() {
    final roomState = _read(gameRoomState);
    final player = roomState.players
        .firstWhere((player) => player.userId == roomState.myUserId);
    final seat = SeatExt.from(player.seat)!;
    final uiState = _read(cakepokerUiState);
    final cardId = uiState.dockSelectedCard!;
    final newuiState =
        uiState.copyWith(dockHandCards: [], dockSelectedCard: null);
    _read(cakepokerUiState.notifier).update(newuiState);
    final sender = PlayerWillPutSender(_read);
    sender.sendPlayerWillPut(
      cardId,
      roomState.myUserId,
      seat,
    );
  }
}

final putPresenter = Provider((ref) => PutController(ref.read));
