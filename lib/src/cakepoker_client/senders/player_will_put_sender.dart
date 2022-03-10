//
//
//

import 'package:cake_poker/src/center_client/cakepoker_offline_client.dart';
import 'package:cake_poker/src/state/game_room.dart';
import 'package:cake_poker/src/types/game_message.dart';
import 'package:cake_poker/src/types/game_message_type.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:riverpod/riverpod.dart';

class PlayerWillPutSender {
  final Reader read;
  PlayerWillPutSender(this.read);

  sendPlayerWillPut(PlayingCard putCardId, String myUserId, Seat seat) async {
    final hostUserId = read(gameRoomState).hostUserId;
    final message = GameMessage(
      type: GameMessageType.playerWillPut,
      from_user_id: myUserId,
      to_user_ids: [hostUserId],
      players: null,
      host_user_id: null,
      record: null,
      trigger_seat: seat.rawValue,
      put_card_id: putCardId.rawValue,
      bet_level: null,
    );
    read(centerClientOffline).send(message);
  }
}
