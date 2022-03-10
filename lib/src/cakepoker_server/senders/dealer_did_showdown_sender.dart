//
//
//

import 'package:cake_poker/src/center_client/cakepoker_offline_client.dart';
import 'package:cake_poker/src/state/game_room.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/game_message.dart';
import 'package:cake_poker/src/types/game_message_type.dart';
import 'package:riverpod/riverpod.dart';

class DealerDidShowdownSender {
  final Reader read;
  DealerDidShowdownSender(this.read);

  sendDealerDidShowdownMessage(CakepokerRecord record) async {
    final state = read(gameRoomState);
    final userIds = state.players.map((player) => player.userId).toList();
    final message = GameMessage(
      type: GameMessageType.dealerDidShowdown,
      from_user_id: state.myUserId,
      to_user_ids: userIds,
      players: null,
      host_user_id: null,
      record: record,
      trigger_seat: null,
      put_card_id: null,
      bet_level: null,
    );
    final client = read(centerClientOffline);
    client.send(message);
  }
}
