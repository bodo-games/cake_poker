//
//
//

import 'package:cake_poker/src/center_client/cakepoker_offline_client.dart';
import 'package:cake_poker/src/state/game_room.dart';
import 'package:cake_poker/src/types/bet_level.dart';
import 'package:cake_poker/src/types/game_message.dart';
import 'package:cake_poker/src/types/game_message_type.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:riverpod/riverpod.dart';

class PlayerWillBetSender {
  final Reader read;
  PlayerWillBetSender(this.read);

  sendPlayerWillBet(BetLevel level, String myUserId, Seat seat) async {
    final hostUserId = read(gameRoomState).hostUserId;
    final message = GameMessage(
      type: GameMessageType.playerWillBet,
      from_user_id: myUserId,
      to_user_ids: [hostUserId],
      players: null,
      host_user_id: null,
      record: null,
      trigger_seat: seat.rawValue,
      put_card_id: null,
      bet_level: level.rawValue,
    );
    read(centerClientOffline).send(message);
  }
}
