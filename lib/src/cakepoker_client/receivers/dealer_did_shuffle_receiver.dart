//
//
//

import 'package:cake_poker/src/state/cakepoker_record.dart';
import 'package:cake_poker/src/state/cakepoker_side_ui_state.dart';
import 'package:cake_poker/src/state/cakepoker_ui_state.dart';
import 'package:cake_poker/src/state/game_room.dart';
import 'package:cake_poker/src/types/game_message.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class DealerDidShuffleReceiver {
  final Reader read;
  DealerDidShuffleReceiver(this.read);

  onReceiveDealerDidShuffle(GameMessage message) async {
    debugPrint('Partycake onReceiveDealerDidShuffle');

    // 内部システムデータ
    read(cakepokerRecord.notifier).update(message.record!);

    // Ui の更新
    final gameState = read(cakepokerRecord);
    final roomState = read(gameRoomState);
    final oldUiState = read(cakepokerUiState);
    final player =
        roomState.players.firstWhere((p) => p.userId == roomState.myUserId);
    final side =
        gameState.sides.firstWhere((s) => s.seat.rawValue == player.seat);
    // Handカード
    final cardIds = side.handCardIds;

    // Putされたカードの削除
    List<CakepokerSideUiState> newUiSides = [];
    for (var uiSide in oldUiState.uiSides) {
      final newUiSide = uiSide.copyWith(
        putCardId: null,
        putCardDegree: 90,
      );
      newUiSides.add(newUiSide);
    }
    final newUiState = oldUiState.copyWith(
      dockHandCards: cardIds,
      uiSides: newUiSides,
    );
    read(cakepokerUiState.notifier).update(newUiState);
  }
}
