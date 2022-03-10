import 'package:cake_poker/src/cakepoker_core/bet_cost.dart';
import 'package:cake_poker/src/types/bet_level.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/player_step.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

bool canShuffle({required CakepokerRecord record}) {
  // 全員のベットが完了しているか確認
  final bettingPlayer = record.sides.firstWhereOrNull((side) {
    return side.playerStep == PlayerStep.bet;
  });
  // 一人もいなければOK
  return (bettingPlayer == null);
}

bool canShowdown({required CakepokerRecord record}) {
  // 全員のプットが完了しているか確認
  final puttingPlayer = record.sides.firstWhereOrNull((side) {
    return side.playerStep == PlayerStep.put;
  });
  // 一人もいなければOK
  return (puttingPlayer == null);
}

bool canBet({
  required BetLevel level,
  required Seat seat,
  required CakepokerRecord record,
}) {
  final side = record.sides.firstWhere((side) => side.seat == seat);
  final cost = betCost(level);
  if (side.playerStep != PlayerStep.bet) {
    debugPrint("現在はベットのステップではありません");
    return false;
  } else if (side.betLevel != null) {
    debugPrint("既にベット済みです");
    return false;
  } else if (side.chips < cost) {
    debugPrint("チップが足りません");
    return false;
  } else {
    return true;
  }
}

bool canPut({
  required PlayingCard cardId,
  required Seat seat,
  required CakepokerRecord record,
}) {
  final side = record.sides.firstWhere((side) => side.seat == seat);
  final myCard = side.handCardIds.firstWhereOrNull((id) {
    return id == cardId;
  });
  if (side.playerStep != PlayerStep.put) {
    debugPrint("現在はプットのステップではありません");
    return false;
  } else if (side.putCardId != null) {
    debugPrint("既にプット済みです");
    return false;
  } else if (myCard == null) {
    debugPrint("そのカードは持っていません");
    return false;
  } else {
    return true;
  }
}
