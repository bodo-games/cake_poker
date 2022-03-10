//
//
//

import 'package:cake_poker/src/center_client/cakepoker_offline_client.dart';
import 'package:cake_poker/src/state/game_room.dart';
import 'package:cake_poker/src/types/game_message.dart';
import 'package:cake_poker/src/types/game_message_type.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:riverpod/riverpod.dart';

class PlayerDidPutSender {
  final Reader read;
  PlayerDidPutSender(this.read);

  sendPlayerDidPutMessage(Seat seat) async {
    final state = read(gameRoomState);
    final userIds = state.players.map((player) => player.userId).toList();
    final message = GameMessage(
      type: GameMessageType.playerDidPut,
      from_user_id: state.myUserId,
      to_user_ids: userIds,
      players: null,
      host_user_id: null,
      record: null,
      trigger_seat: seat.rawValue,
      put_card_id: null,
      bet_level: null,
    );
    final client = read(centerClientOffline);
    client.send(message);
  }
}
