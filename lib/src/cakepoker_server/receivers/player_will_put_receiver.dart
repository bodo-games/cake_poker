//
//
//

import 'package:cake_poker/src/cakepoker_server/controller.dart';
import 'package:cake_poker/src/types/game_message.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:riverpod/riverpod.dart';

class PlayerWillPutReceiver {
  final Reader read;
  PlayerWillPutReceiver(this.read);

  onReceivePlayerWillPut(GameMessage message) async {
    final controller = read(partycakeController);
    final seat = SeatExt.from(message.trigger_seat!)!;
    final cardId = PlayingCardX.from(message.put_card_id!)!;
    controller.putAction(seat, cardId);
  }
}
