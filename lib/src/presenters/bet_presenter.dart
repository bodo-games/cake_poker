//
//
//

import 'package:cake_poker/src/pages/parent_app.dart';
import 'package:cake_poker/src/state/cakepoker_ui_state.dart';
import 'package:cake_poker/src/state/game_room.dart';
import 'package:cake_poker/src/types/bet_level.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

import '../cakepoker_client/senders/player_will_bet_sender.dart';

class Presenter {
  final Reader _read;
  Presenter(this._read);

  onTapExit() async {
    debugPrint('確認せずに退出します');
    onTapExitYes();
  }

  onTapExitYes() async {
    ParentApp.onGamePageClose();
  }

  onTapExitNo() async {
    debugPrint('何も行いません');
  }

  onTapBetLevel(BetLevel level) {
    final oldState = _read(cakepokerUiState);
    final oldSelectedLevel = oldState.dockSelectedBetLevel;
    if (oldSelectedLevel == level) {
      // すでに選択されているLevelをまたタップされた時
      final newState = oldState.copyWith(dockSelectedBetLevel: null);
      _read(cakepokerUiState.notifier).update(newState);
    } else {
      final newState = oldState.copyWith(dockSelectedBetLevel: level);
      _read(cakepokerUiState.notifier).update(newState);
    }
  }

  onTapBetButton() {
    final roomState = _read(gameRoomState);
    final player = roomState.players
        .firstWhere((player) => player.userId == roomState.myUserId);
    final seat = SeatExt.from(player.seat)!;
    final uiState = _read(cakepokerUiState);
    final level = uiState.dockSelectedBetLevel!;
    final newUiState =
        uiState.copyWith(dockBetLevels: [], dockSelectedBetLevel: null);
    _read(cakepokerUiState.notifier).update(newUiState);
    final sender = PlayerWillBetSender(_read);
    sender.sendPlayerWillBet(
      level,
      roomState.myUserId,
      seat,
    );
  }
}

final betPresenter = Provider((ref) => Presenter(ref.read));
