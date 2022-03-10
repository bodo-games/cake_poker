import 'package:cake_poker/src/cakepoker_core/bet_cost.dart';
import 'package:cake_poker/src/types/bet_level.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/player_step.dart';
import 'package:cake_poker/src/types/seat.dart';

CakepokerRecord bet(Seat seat, BetLevel level, CakepokerRecord record) {
  // 必要な情報を集める
  final _betCost = betCost(level);
  final oldSide = record.sides.firstWhere((side) => side.seat == seat);
  final newChips = oldSide.chips - _betCost;
  // 新しい Side を作成
  var newSide = oldSide.copyWith(
    playerStep: PlayerStep.waitingShuffle,
    chips: newChips,
    betLevel: level,
  );
  // 古い Side を除去して新しい Side を追加
  var newSides = List.of(record.sides);
  newSides.removeWhere((side) => side.seat == seat);
  newSides.add(newSide);
  // 新しい Record を作成
  final newRecord = record.copyWith(
    sides: newSides,
  );
  return newRecord;
}
