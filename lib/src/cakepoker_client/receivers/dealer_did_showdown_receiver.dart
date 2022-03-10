//
//
//

import 'package:cake_poker/src/presenters/showdown_presenter.dart';
import 'package:cake_poker/src/state/cakepoker_record.dart';
import 'package:cake_poker/src/state/cakepoker_ui_state.dart';
import 'package:cake_poker/src/types/bet_level.dart';
import 'package:cake_poker/src/types/game_message.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class DealerDidShowdownReceiver {
  final Reader read;
  DealerDidShowdownReceiver(this.read);

  onReceiveDealerDidShowdown(GameMessage message) async {
    debugPrint('Partycake onReceiveDealerDidShowdown');

    read(cakepokerRecord.notifier).update(message.record!);

    final presenter = read(showdownPresenter);
    await presenter.showdown();

    final levels = [BetLevel.min, BetLevel.mid, BetLevel.max];
    final oldUiState = read(cakepokerUiState);
    final newUiState = oldUiState.copyWith(dockBetLevels: levels);
    read(cakepokerUiState.notifier).update(newUiState);
  }
}
