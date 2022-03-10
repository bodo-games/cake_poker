// ignore_for_file: non_constant_identifier_names
//
//
//

import 'package:cake_poker/src/pages/cakepoker_play/player.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/game_message_type.dart';

class GameMessage {
  final GameMessageType type;
  final String from_user_id;
  final List<String> to_user_ids;
  final List<Player>? players;
  final String? host_user_id;
  final CakepokerRecord? record;
  final int? trigger_seat;
  final int? put_card_id;
  final int? bet_level;

  GameMessage({
    required this.type,
    required this.from_user_id,
    required this.to_user_ids,
    required this.players,
    required this.host_user_id,
    required this.record,
    required this.trigger_seat,
    required this.put_card_id,
    required this.bet_level,
  });
}
