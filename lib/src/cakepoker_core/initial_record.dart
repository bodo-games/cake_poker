import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/combo.dart';
import 'package:cake_poker/src/types/dealer_step.dart';
import 'package:cake_poker/src/types/inner_piece_id.dart';
import 'package:cake_poker/src/types/outer_piece_id.dart';
import 'package:cake_poker/src/types/player_step.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:cake_poker/src/types/side.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:uuid/uuid.dart';

const _dealerStep = DealerStep.waitingBet;

final _deck = [
  PlayingCard.spade1,
  PlayingCard.spade11,
  PlayingCard.spade12,
  PlayingCard.heart1,
  PlayingCard.heart11,
  PlayingCard.heart12,
  PlayingCard.diamond11,
  PlayingCard.diamond12,
  PlayingCard.diamond13,
  PlayingCard.club11,
  PlayingCard.club12,
  PlayingCard.club13,
];

final List<Side> _sides = [Seat.s1, Seat.s2, Seat.s3, Seat.s4].map((seat) {
  return Side(
    seat: seat,
    playerStep: PlayerStep.bet,
    chips: 27,
    handCardIds: [],
    betLevel: null,
    putCardId: null,
    lastCombo: Combo.start,
  );
}).toList();

final _innerPieceIds = [
  InnerPieceId.club,
  InnerPieceId.heart,
  InnerPieceId.joker,
  InnerPieceId.diamond,
];

final _outerPieceIds = [
  OuterPieceId.diamond12,
  OuterPieceId.club11,
  OuterPieceId.spade13,
  OuterPieceId.heart1,
];

final initialRecord = CakepokerRecord(
  id: const Uuid().v4(),
  deck: _deck,
  dealerStep: _dealerStep,
  sides: _sides,
  innerPieceIds: _innerPieceIds,
  outerPieceIds: _outerPieceIds,
  innerOffset: 0,
  outerOffset: 0,
);
