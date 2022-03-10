//
//
//

import 'package:cake_poker/src/cakepoker_server/controller.dart';
import 'package:cake_poker/src/types/bet_level.dart';
import 'package:cake_poker/src/types/game_message.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:riverpod/riverpod.dart';

class PlayerWillBetReceiver {
  final Reader read;
  PlayerWillBetReceiver(this.read);

  onReceivePlayerWillBet(GameMessage message) async {
    final controller = read(partycakeController);
    final seat = SeatExt.from(message.trigger_seat!)!;
    final level = BetLevelExt.from(message.bet_level!)!;
    controller.betAction(seat, level);
  }
}
