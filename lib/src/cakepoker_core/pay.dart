import 'package:cake_poker/src/cakepoker_core/bonus_chips.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/dealer_step.dart';
import 'package:cake_poker/src/types/player_step.dart';
import 'package:cake_poker/src/types/side.dart';

CakepokerRecord pay(CakepokerRecord record) {
  List<Side> newSides = [];
  for (var side in record.sides) {
    // 新しい Chips を計算する
    final _bonusChips = bonusChips(combo: side.lastCombo);
    var newChips = side.chips + _bonusChips;
    if (newChips < 0) {
      newChips = 0;
    }
    // 新しい Side を作成して追加
    final newSide = side.copyWith(
      playerStep: PlayerStep.bet,
      chips: newChips,
      betLevel: null,
    );
    newSides.add(newSide);
  }
  // 新しい Record を作成
  final newRecord = record.copyWith(
    dealerStep: DealerStep.waitingBet,
    sides: newSides,
  );
  return newRecord;
}
