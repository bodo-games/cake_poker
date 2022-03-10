import 'package:cake_poker/src/cakepoker_core/runner.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:flutter/material.dart';

class Logger implements PartycakeObserver {
  @override
  void dealerDidShowdown(CakepokerRecord record) {
    debugPrint('Dealer did showdown');
  }

  @override
  void dealerDidShuffle(CakepokerRecord record) {
    debugPrint('Dealer did shuffle');
  }

  @override
  void playerDidBet(CakepokerRecord record, Seat seat) {
    debugPrint('Player $seat did bet');
  }

  @override
  void playerDidPut(CakepokerRecord record, Seat seat) {
    debugPrint('Player $seat did put');
  }
}
