import 'package:cake_poker/src/types/outer_piece_id.dart';
import 'package:casino_plus/casino_plus.dart';

class OuterPiece {
  final OuterPieceId id;
  final Number numberId;
  final Suit suitId;

  OuterPiece({
    required this.id,
    required this.numberId,
    required this.suitId,
  });
}
