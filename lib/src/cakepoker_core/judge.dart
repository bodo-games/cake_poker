import 'package:cake_poker/src/cakepoker_core/inner_pieces.dart';
import 'package:cake_poker/src/cakepoker_core/make_combo.dart';
import 'package:cake_poker/src/cakepoker_core/outer_pieces.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:cake_poker/src/types/side.dart';
import 'package:casino_plus/casino_plus.dart';

CakepokerRecord judge(CakepokerRecord record) {
  List<Side> newSides = [];
  for (var side in record.sides) {
    // Seat から 対応する index を取得
    final seatOffset = side.seat.rawValue - 1;
    var innerIndex = seatOffset - record.innerOffset;
    if (innerIndex < 0) {
      innerIndex += record.innerPieceIds.length;
    }
    var outerIndex = seatOffset - record.outerOffset;
    if (outerIndex < 0) {
      outerIndex += record.outerPieceIds.length;
    }
    // inner, outer, card を取得
    final innerPieceId = record.innerPieceIds[innerIndex];
    final innerPiece =
        innerPieces.firstWhere((piece) => piece.id == innerPieceId);
    final outerPieceId = record.outerPieceIds[outerIndex];
    final outerPiece =
        outerPieces.firstWhere((piece) => piece.id == outerPieceId);
    final putCardId = side.putCardId!;

    // Combo を計算して新しい Side を作成
    final combo = makeCombo(
      innerSuit: innerPiece.suitId,
      outerSuit: outerPiece.suitId,
      outerNumber: outerPiece.numberId,
      cardSuit: putCardId.suit,
      cardNumber: putCardId.number,
      lastCombo: side.lastCombo,
    );
    final newSide = side.copyWith(
      lastCombo: combo,
    );
    newSides.add(newSide);
  }
  // 新しい Record を作成して返す
  final newRecord = record.copyWith(
    sides: newSides,
  );
  return newRecord;
}
