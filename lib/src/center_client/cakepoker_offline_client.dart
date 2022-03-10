//
//
//

import 'package:cake_poker/src/cakepoker_client/receivers/dealer_did_showdown_receiver.dart';
import 'package:cake_poker/src/cakepoker_client/receivers/dealer_did_shuffle_receiver.dart';
import 'package:cake_poker/src/cakepoker_client/receivers/player_did_put_receiver.dart';
import 'package:cake_poker/src/cakepoker_client/receivers/reload_record_receiver.dart';
import 'package:cake_poker/src/cakepoker_server/bot_user.dart';
import 'package:cake_poker/src/cakepoker_server/receivers/player_will_bet_receiver.dart';
import 'package:cake_poker/src/cakepoker_server/receivers/player_will_put_receiver.dart';
import 'package:cake_poker/src/cakepoker_server/receivers/will_reload_record_receiver.dart';
import 'package:cake_poker/src/state/game_room.dart';
import 'package:cake_poker/src/types/game_message.dart';
import 'package:cake_poker/src/types/game_message_type.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

class CakepokerOfflineClient {
  final Reader _read;
  CakepokerOfflineClient(this._read);

  /// GameMessage を送信する
  send(GameMessage message) {
    final state = _read(gameRoomState);
    final myUserId = state.myUserId;
    // 全ての宛先について
    for (var toUserId in message.to_user_ids) {
      final player =
          state.players.firstWhere((player) => player.userId == toUserId);
      final userType = player.userType;
      switch (userType) {
        case UserType.human:
          if (myUserId == toUserId) {
            // 自分自身へ送信
            _sendToSelfUser(message);
          } else {
            // 他のユーザーへ送信
            _sendToOtherUser(toUserId, message);
          }
          break;
        case UserType.bot:
          // Botへ送信
          _sendToBotUser(toUserId, message);
          break;
      }
    }
  }

  /// Bot へ送信
  _sendToBotUser(String toUserId, GameMessage message) {
    final state = _read(gameRoomState);
    final player =
        state.players.firstWhere((player) => player.userId == toUserId);
    final bot = BotUser();
    final seat = SeatExt.from(player.seat)!;
    bot.runForMessage(_read, player.userId, seat, message);
  }

  /// 自分自身 へ送信
  _sendToSelfUser(GameMessage message) {
    // ローカルでそのまま受信
    _onReceive(message);
  }

  /// 他のユーザー へ送信
  _sendToOtherUser(String toUserId, GameMessage message) {
    throw Exception('オフラインでは他のユーザへ送信できません');
  }

  // GameMessage を受信
  _onReceive(GameMessage message) {
    switch (message.type) {
      case GameMessageType.matchingComplete:
        throw Exception('オフラインでは呼ばれません');
      case GameMessageType.dealerDidShowdown:
        final receiver = DealerDidShowdownReceiver(_read);
        receiver.onReceiveDealerDidShowdown(message);
        break;
      case GameMessageType.dealerDidShuffle:
        final receiver = DealerDidShuffleReceiver(_read);
        receiver.onReceiveDealerDidShuffle(message);
        break;
      case GameMessageType.playerDidPut:
        final receiver = PlayerDidPutReceiver(_read);
        receiver.onReceivePlayerDidPut(message);
        break;
      case GameMessageType.reloadRecord:
        debugPrint('onReceive ReloadRecord');
        final receiver = ReloadRecordReceiver(_read);
        receiver.onReceiveReloadRecord(message);
        break;
      case GameMessageType.playerWillBet:
        final receiver = PlayerWillBetReceiver(_read);
        receiver.onReceivePlayerWillBet(message);
        break;
      case GameMessageType.playerWillPut:
        final receiver = PlayerWillPutReceiver(_read);
        receiver.onReceivePlayerWillPut(message);
        break;
      case GameMessageType.willReloadRecord:
        final receiver = WillReloadRecordReceiver(_read);
        receiver.onReceiveWillReloadRecord(message);
        break;
    }
  }
}

final centerClientOffline = Provider((ref) => CakepokerOfflineClient(ref.read));
