import 'package:cake_poker/src/types/bet_level.dart';

int betCost(BetLevel level) {
  switch (level) {
    case BetLevel.min:
      return 3;
    case BetLevel.mid:
      return 5;
    case BetLevel.max:
      return 7;
  }
}
