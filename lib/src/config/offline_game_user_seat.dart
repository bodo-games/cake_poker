import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';

// TODO: - Pages 側で myUserIdを見て判断するようにする
Seat offlineGameUserSeat(GameId gameId) {
  switch (gameId) {
    case GameId.cakepoker:
      return Seat.s3;
    case GameId.commingSoon:
      return Seat.s1;
  }
}
