//
//
//

import 'package:cake_poker/src/types/game_message.dart';
import 'package:riverpod/riverpod.dart';

class PlayerDidBetReceiver {
  final Reader read;
  PlayerDidBetReceiver(this.read);

  onReceivePlayerDidBet(GameMessage message) async {
    throw Exception('Player Bet 通知は送信してはいけません');
  }
}
