//
//
//

import 'package:cake_poker/src/center_client/cakepoker_offline_client.dart';
import 'package:cake_poker/src/state/game_room.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/game_message.dart';
import 'package:cake_poker/src/types/game_message_type.dart';
import 'package:riverpod/riverpod.dart';

class ReloadRecordSender {
  final Reader _read;
  ReloadRecordSender(this._read);

  bool isHostUser() {
    final state = _read(gameRoomState);
    final myUserId = state.myUserId;
    final hostUserId = state.hostUserId;
    return myUserId == hostUserId;
  }

  sendReloadRecordMessage(CakepokerRecord record) {
    final state = _read(gameRoomState);
    final myUserId = state.myUserId;
    final userIds = state.players.map((player) => player.userId).toList();
    final message = GameMessage(
      type: GameMessageType.reloadRecord,
      from_user_id: myUserId,
      to_user_ids: userIds,
      players: null,
      host_user_id: null,
      record: record,
      trigger_seat: null,
      put_card_id: null,
      bet_level: null,
    );
    final client = _read(centerClientOffline);
    client.send(message);
  }
}

final reloadRecordSender = Provider((ref) => ReloadRecordSender(ref.read));
