//
//
//

import 'dart:math';
import 'package:cake_poker/src/cakepoker_client/senders/player_will_bet_sender.dart';
import 'package:cake_poker/src/cakepoker_client/senders/player_will_put_sender.dart';
import 'package:cake_poker/src/state/game_room.dart';
import 'package:cake_poker/src/types/bet_level.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/game_message.dart';
import 'package:cake_poker/src/types/game_message_type.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class BotUser {
  // ただランダムにベット
  betVersion1({
    required Reader read,
    required String botUserId,
    required CakepokerRecord record,
    required Seat seat,
  }) async {
    debugPrint('Bot ID: $botUserId will Bet');
    // 5秒まつ
    await Future.delayed(const Duration(seconds: 3), () {});
    final selection = [
      BetLevel.min,
      BetLevel.mid,
      BetLevel.max,
    ];
    final _random = Random();
    var randomLevel = selection[_random.nextInt(selection.length)];
    final sender = PlayerWillBetSender(read);
    sender.sendPlayerWillBet(randomLevel, botUserId, seat);
  }

  // ただランダムにPut
  putVersion1({
    required Reader read,
    required String botUserId,
    required CakepokerRecord record,
    required Seat seat,
  }) async {
    debugPrint('Bot ID: $botUserId put');
    // 5秒まつ
    await Future.delayed(const Duration(seconds: 3), () {});
    final side = record.sides.firstWhere((side) => side.seat == seat);
    final selection = side.handCardIds;
    final _random = Random();
    final index = _random.nextInt(selection.length);
    final randomCardId = selection[index];
    final sender = PlayerWillPutSender(read);
    sender.sendPlayerWillPut(randomCardId, botUserId, seat);
  }

  runForMessage(
    Reader read,
    String userId,
    Seat seat,
    GameMessage message,
  ) {
    final state = read(gameRoomState);
    final player =
        state.players.firstWhere((player) => player.userId == userId);
    switch (message.type) {
      case GameMessageType.dealerDidShowdown:
        // Showdown が終わった時は Bet
        betVersion1(
          read: read,
          botUserId: userId,
          record: message.record!,
          seat: SeatExt.from(player.seat)!,
        );
        break;
      case GameMessageType.dealerDidShuffle:
        // Shuffle が終わった時は Put
        putVersion1(
          read: read,
          botUserId: userId,
          record: message.record!,
          seat: SeatExt.from(player.seat)!,
        );
        break;
      default:
        break;
    }
  }
}
