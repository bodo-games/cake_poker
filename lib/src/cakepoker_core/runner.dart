import 'package:cake_poker/src/cakepoker_core/bet.dart';
import 'package:cake_poker/src/cakepoker_core/put.dart';
import 'package:cake_poker/src/cakepoker_core/showdown.dart';
import 'package:cake_poker/src/cakepoker_core/shuffle.dart';
import 'package:cake_poker/src/cakepoker_core/step_validations.dart';
import 'package:cake_poker/src/types/bet_level.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';

// TODO: - ここで masked Record 渡す
abstract class PartycakeObserver {
  void playerDidBet(CakepokerRecord record, Seat seat);
  void dealerDidShuffle(CakepokerRecord record);
  void playerDidPut(CakepokerRecord record, Seat seat);
  void dealerDidShowdown(CakepokerRecord record);
}

class PartycakeRunner {
  final List<PartycakeObserver> observers;
  PartycakeRunner({required this.observers});

  void _notifyPlayerDidBet(CakepokerRecord record, Seat seat) {
    for (var observer in observers) {
      observer.playerDidBet(record, seat);
    }
  }

  void _notifyDealerDidShuffle(CakepokerRecord record) {
    for (var observer in observers) {
      observer.dealerDidShuffle(record);
    }
  }

  void _notifyPlayerDidPut(CakepokerRecord record, Seat seat) {
    for (var observer in observers) {
      observer.playerDidPut(record, seat);
    }
  }

  void _notifyDealerDidShowdown(CakepokerRecord record) {
    for (var observer in observers) {
      observer.dealerDidShowdown(record);
    }
  }

  // 公開メソッド
  betAction({
    required Seat seat,
    required BetLevel level,
    required CakepokerRecord forRecord,
  }) {
    var record = forRecord;
    final _canBet = canBet(level: level, seat: seat, record: record);
    if (_canBet) {
      // Bet
      record = bet(seat, level, record);
      _notifyPlayerDidBet(record, seat);
    } else {
      throw Exception('不正なBetです');
    }

    final _canShuffle = canShuffle(record: record);
    if (_canShuffle) {
      // Shuffle
      record = shuffle(record);
      _notifyDealerDidShuffle(record);
    }
  }

  // 公開メソッド
  putAction({
    required Seat seat,
    required PlayingCard cardId,
    required CakepokerRecord forRecord,
  }) {
    var record = forRecord;
    final _canPut = canPut(cardId: cardId, seat: seat, record: record);
    if (_canPut) {
      // Put
      record = put(seat, cardId, record);
      _notifyPlayerDidPut(record, seat);
    } else {
      throw Exception('不正なPutです');
    }

    final _canShowdown = canShowdown(record: record);
    if (_canShowdown) {
      record = showdown(record);
      _notifyDealerDidShowdown(record);
    }
  }
}
