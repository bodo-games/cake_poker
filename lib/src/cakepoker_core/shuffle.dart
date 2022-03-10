import 'package:cake_poker/src/cakepoker_core/card_count.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/dealer_step.dart';
import 'package:cake_poker/src/types/player_step.dart';
import 'package:cake_poker/src/types/side.dart';

CakepokerRecord shuffle(CakepokerRecord record) {
  var newDeck = List.of(record.deck);
  // デッキへPutカードを回収
  for (var side in record.sides) {
    // ゲーム開始時は Putカード null
    final cardId = side.putCardId;
    if (cardId != null) {
      newDeck.add(cardId);
    }
  }
  // シャッフル
  newDeck.shuffle();
  // Handカードを配る
  final List<Side> newSides = [];
  for (var side in record.sides) {
    final _cardCount = cardCount(side.betLevel!);
    // 例えば sublist(0, 3) で先頭3つ, sublist(3)で先頭3つ以外の部分
    final newHandCardIds = newDeck.sublist(0, _cardCount);
    // Deckからカードを取り除く
    newDeck = newDeck.sublist(_cardCount);
    // 新しい Side を作成して追加
    final newSide = side.copyWith(
      playerStep: PlayerStep.put,
      handCardIds: newHandCardIds,
      putCardId: null,
    );
    newSides.add(newSide);
  }
  // 新しい Record を作成
  final newRecord = record.copyWith(
    deck: newDeck,
    dealerStep: DealerStep.waitingPut,
    sides: newSides,
  );
  return newRecord;
}
