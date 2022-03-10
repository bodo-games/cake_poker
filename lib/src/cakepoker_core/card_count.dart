import 'package:cake_poker/src/types/bet_level.dart';

int cardCount(BetLevel level) {
  switch (level) {
    case BetLevel.min:
      return 1;
    case BetLevel.mid:
      return 2;
    case BetLevel.max:
      return 3;
  }
}
