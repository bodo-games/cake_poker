//
//
//

import 'package:cake_poker/src/cakepoker_server/bot_user.dart';
import 'package:cake_poker/src/state/cakepoker_record.dart';
import 'package:cake_poker/src/state/cakepoker_ui_state.dart';
import 'package:cake_poker/src/state/game_room.dart';
import 'package:cake_poker/src/types/bet_level.dart';
import 'package:cake_poker/src/types/game_message.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class ReloadRecordReceiver {
  final Reader _read;
  ReloadRecordReceiver(this._read);
  onReceiveReloadRecord(GameMessage message) {
    debugPrint('Partycake onReceiveReloadRecord');

    _read(cakepokerRecord.notifier).update(message.record!);

    final roomState = _read(gameRoomState);
    // ローカルで呼ばれる時は初回のみなので Bot に Bet させる
    for (var player in roomState.players) {
      if (player.userId != roomState.myUserId) {
        final bot = BotUser();
        bot.betVersion1(
          read: _read,
          botUserId: player.userId,
          record: message.record!,
          seat: SeatExt.from(player.seat)!,
        );
      }
    }

    // ローカルで呼ばれる時は初回のみなので Bet 選択肢を表示する
    final levels = [BetLevel.min, BetLevel.mid, BetLevel.max];
    final oldUiState = _read(cakepokerUiState);
    final newUiState = oldUiState.copyWith(dockBetLevels: levels);
    _read(cakepokerUiState.notifier).update(newUiState);
  }
}
