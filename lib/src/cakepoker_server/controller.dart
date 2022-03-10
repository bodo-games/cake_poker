import 'package:cake_poker/src/cakepoker_core/runner.dart';
import 'package:cake_poker/src/cakepoker_server/logger.dart';
import 'package:cake_poker/src/cakepoker_server/record_repository.dart';
import 'package:cake_poker/src/cakepoker_server/senders/dealer_did_showdown_sender.dart';
import 'package:cake_poker/src/cakepoker_server/senders/dealer_did_shuffle_sender.dart';
import 'package:cake_poker/src/cakepoker_server/senders/player_did_bet_sender.dart';
import 'package:cake_poker/src/cakepoker_server/senders/player_did_put_sender.dart';
import 'package:cake_poker/src/types/bet_level.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final partycakeController = Provider((ref) => _PartycakeController(ref.read));

class _PartycakeController implements PartycakeObserver {
  final Reader read;
  _PartycakeController(this.read);
  betAction(Seat seat, BetLevel level) {
    final repository = RecordRepository();
    final record = repository.loadRecord();
    final logger = Logger();
    final controller = PartycakeRunner(
      observers: [
        logger,
        this,
      ],
    );
    controller.betAction(seat: seat, level: level, forRecord: record);
  }

  putAction(Seat seat, PlayingCard cardId) {
    final repository = RecordRepository();
    final record = repository.loadRecord();
    final logger = Logger();
    final controller = PartycakeRunner(
      observers: [
        logger,
        this,
      ],
    );
    controller.putAction(seat: seat, cardId: cardId, forRecord: record);
  }

  @override
  void dealerDidShowdown(CakepokerRecord record) {
    final repository = RecordRepository();
    repository.saveRecord(record);

    final sender = DealerDidShowdownSender(read);
    sender.sendDealerDidShowdownMessage(record);
  }

  @override
  void dealerDidShuffle(CakepokerRecord record) {
    final repository = RecordRepository();
    repository.saveRecord(record);

    final sender = DealerDidShuffleSender(read);
    sender.sendDealerDidShuffleMessgae(record);
  }

  @override
  void playerDidBet(CakepokerRecord record, Seat seat) {
    final repository = RecordRepository();
    repository.saveRecord(record);

    final sender = PlayerDidBetSender(read);
    sender.sendPlayerDidBetMessage();
  }

  @override
  void playerDidPut(CakepokerRecord record, Seat seat) {
    final repository = RecordRepository();
    repository.saveRecord(record);

    final sender = PlayerDidPutSender(read);
    sender.sendPlayerDidPutMessage(seat);
  }
}
