import 'package:cake_poker/src/types/combo.dart';
import 'package:casino_plus/casino_plus.dart';

Combo makeCombo({
  required Suit innerSuit,
  required Suit outerSuit,
  required Number outerNumber,
  required Suit cardSuit,
  required Number cardNumber,
  required Combo lastCombo,
}) {
  // 判定優先順

  // RoyalStraightFlush
  if ((innerSuit == Suit.joker) &&
      (outerNumber == Number.num13) &&
      (cardSuit == Suit.spade) &&
      (cardNumber == Number.num1) &&
      (outerSuit == Suit.spade)) {
    // joker, Ks, As
    return Combo.rsf;
  }
  // KingJoker
  else if ((innerSuit == Suit.joker) &&
      (outerNumber == Number.num13) &&
      (cardSuit == Suit.spade)) {
    // joker, Ks
    return Combo.kingJoker;
  }
  // Joker
  else if (innerSuit == Suit.joker) {
    // ジョーカー
    return Combo.joker;
  }
  // StraightFlush
  else if ((innerSuit == outerSuit) &&
      (innerSuit == cardSuit) &&
      (outerNumber == cardNumber)) {
    if (lastCombo == Combo.sf) {
      return Combo.double;
    } else if (lastCombo == Combo.double) {
      return Combo.triple;
    } else if ((lastCombo == Combo.triple) || (lastCombo == Combo.miracle)) {
      return Combo.miracle;
    } else {
      // スートが全て同じ && ナンバーが全て同じ
      return Combo.sf;
    }
  }
  // FullHouse
  else if ((innerSuit == cardSuit) && (outerNumber == cardNumber)) {
    // 内スート と カードスート が同じ && 外ナンバー と カードナンバーが同じ
    return Combo.fullHouse;
  }
  // Flush
  else if ((innerSuit == outerSuit) && (innerSuit == cardSuit)) {
    // スートが全て同じ
    return Combo.flush;
  }
  // Straight
  else if ((outerSuit == cardSuit) && (outerNumber == cardNumber)) {
    // 外スート と カードスート が同じ && 外ナンバー と カードナンバーが同じ
    return Combo.straight;
  }
  // TwoPairs
  else if ((innerSuit == outerSuit) && (outerNumber == cardNumber)) {
    // 内スート と 外スート が同じ && 外ナンバー と カードナンバーが同じ
    return Combo.twoPairs;
  }
  // NumberPair
  else if (outerNumber == cardNumber) {
    // 外ナンバー と カードナンバーが同じ
    return Combo.numberPair;
  }
  // SuitPair
  else if ((innerSuit == outerSuit) ||
      (innerSuit == cardSuit) ||
      (outerSuit == cardSuit)) {
    // スートがどれか同じ
    return Combo.suitPair;
  }
  // NoPairs
  else if ((innerSuit != outerSuit) &&
      (innerSuit != cardSuit) &&
      (outerSuit != cardSuit) &&
      (outerNumber != cardNumber)) {
    // ノーペア
    return Combo.noPairs;
  } else {
    throw Exception('コンボを特定できませんでした');
  }
}
