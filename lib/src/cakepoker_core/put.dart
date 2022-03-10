import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/player_step.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';

CakepokerRecord put(Seat seat, PlayingCard cardId, CakepokerRecord record) {
  // 必要な情報を集める
  final oldSide = record.sides.firstWhere((side) => side.seat == seat);
  final oldHandCards = oldSide.handCardIds;
  final newHandCards = List.of(oldHandCards);
  newHandCards.removeWhere((id) => id == cardId);
  // 新しい Side を作成
  var newSide = oldSide.copyWith(
    playerStep: PlayerStep.waitingShowdown,
    handCardIds: newHandCards,
    putCardId: cardId,
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
