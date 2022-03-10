import 'package:cake_poker/src/cakepoker_core/judge.dart';
import 'package:cake_poker/src/cakepoker_core/pay.dart';
import 'package:cake_poker/src/cakepoker_core/return_hand_cards.dart';
import 'package:cake_poker/src/cakepoker_core/rotate_cake.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';

CakepokerRecord showdown(CakepokerRecord record) {
  // return hand cards
  final r1 = returnHandCards(record);
  final r2 = rotateCake(r1);
  final r3 = judge(r2);
  final r4 = pay(r3);
  return r4;
}
