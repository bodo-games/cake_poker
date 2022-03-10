import 'package:cake_poker/src/types/combo.dart';

int bonusChips({required Combo combo}) {
  switch (combo) {
    case Combo.start:
      return 0;
    case Combo.rsf:
      return 100;
    case Combo.sf:
      return 50;
    case Combo.fullHouse:
      return 30;
    case Combo.flush:
      return 25;
    case Combo.straight:
      return 15;
    case Combo.twoPairs:
      return 15;
    case Combo.double:
      return 100;
    case Combo.triple:
      return 200;
    case Combo.miracle:
      return 500;
    case Combo.kingJoker:
      return -30;
    case Combo.numberPair:
      return 7;
    case Combo.suitPair:
      return 5;
    case Combo.joker:
      return -10;
    case Combo.noPairs:
      return 0;
  }
}
