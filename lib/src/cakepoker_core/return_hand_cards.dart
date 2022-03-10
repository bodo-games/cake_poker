//
// Showdownの前に全ての手札をDeckに返す
//

import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/side.dart';

CakepokerRecord returnHandCards(CakepokerRecord record) {
  var newDeck = List.of(record.deck);
  final List<Side> newSides = [];
  for (var side in record.sides) {
    // 手札を全てDeckへ
    newDeck += side.handCardIds;
    // 新しい Side を作成して追加
    final newSide = side.copyWith(
      handCardIds: [],
    );
    newSides.add(newSide);
  }
  // 新しい Record を作成
  final newRecord = record.copyWith(
    deck: newDeck,
    sides: newSides,
  );
  return newRecord;
}
