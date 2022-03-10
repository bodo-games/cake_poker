//
//
//

import 'package:cake_poker/src/cakepoker_core/initial_record.dart';
import 'package:cake_poker/src/cakepoker_server/record_repository.dart';
import 'package:cake_poker/src/cakepoker_server/senders/reload_record_sender.dart';
import 'package:cake_poker/src/config/offline_game_user_seat.dart';
import 'package:cake_poker/src/router/page_id.dart';
import 'package:cake_poker/src/router/router.dart';
import 'package:cake_poker/src/state/game_room.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:riverpod/riverpod.dart';
import 'package:uuid/uuid.dart';

class GameStartPresenter {
  final Reader _read;
  GameStartPresenter(this._read);

  onOpenPartycakePalyPage() {
    final roomState = _read(gameRoomState);
    if (roomState.hostUserId == roomState.myUserId) {
      // 自分がホストだった場合
      // 新規レコードを発行して保存
      final record = initialRecord;
      final repository = RecordRepository();
      repository.saveRecord(record);
      // 他のプレイヤーへ送信
      final sender = ReloadRecordSender(_read);
      sender.sendReloadRecordMessage(record);
    }
  }

  willOpenCakepokerPage() {
    // 適当なプレイヤーを そのゲームの最大人数分 -1 つくる
    final playerCount = getGames()
        .firstWhere((game) => game.id == GameId.cakepoker)
        .maxPlayerCount;

    final offlineSeat = offlineGameUserSeat(GameId.cakepoker);
    final myUserId = const Uuid().v4();
    final offlinePlayer = Player(
      seat: offlineSeat.rawValue,
      userId: myUserId,
      nickname: 'あなた',
      iconUrl: 'assets://icon-guest.png',
      userType: UserType.human,
    );

    final players = List.generate(playerCount, (index) {
      final seat = index += 1;
      final botPlayer = getBotPlayers().firstWhere((bot) {
        return bot.seat == seat;
      });
      return seat == offlineSeat.rawValue ? offlinePlayer : botPlayer;
    });

    final newGameRoomState = GameRoomState(
      myUserId: myUserId,
      hostUserId: myUserId,
      players: players,
    );
    _read(gameRoomState.notifier).update(newGameRoomState);
    _read(router).pushPage(PageId.cakepokerPlay);
  }
}

final gameStartPresenter = Provider((ref) => GameStartPresenter(ref.read));
