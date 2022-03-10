import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:casino_plus/casino_plus.dart';

CakepokerRecord rotateCake(CakepokerRecord record) {
  var newInnerOffset = record.innerOffset;
  var newOuterOffset = record.outerOffset;
  for (var side in record.sides) {
    // Putカードによって回すかどうか決める
    final putCard = side.putCardId!;
    switch (putCard.number) {
      case Number.num11:
        newInnerOffset += 1;
        break;
      case Number.num12:
        newOuterOffset += 1;
        break;
      case Number.num13:
        newInnerOffset += 1;
        newOuterOffset += 1;
        break;
      default:
        break;
    }
    // 最大を超えたら 0 へ
    if (newInnerOffset >= record.innerPieceIds.length) {
      newInnerOffset = 0;
    }
    if (newOuterOffset >= record.outerPieceIds.length) {
      newOuterOffset = 0;
    }
  }
  // 新しい Record を作成
  final newRecord = record.copyWith(
    innerOffset: newInnerOffset,
    outerOffset: newOuterOffset,
  );
  return newRecord;
}
