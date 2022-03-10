//
//
//

import 'package:cake_poker/src/types/dealer_step.dart';
import 'package:cake_poker/src/types/inner_piece_id.dart';
import 'package:cake_poker/src/types/outer_piece_id.dart';
import 'package:casino_plus/casino_plus.dart';
import 'side.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cakepoker_record.freezed.dart';
part 'cakepoker_record.g.dart';

@freezed
class CakepokerRecord with _$CakepokerRecord {
  const CakepokerRecord._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CakepokerRecord({
    required String id,
    @PlayingCardConverter() required List<PlayingCard> deck,
    @DealerStepConverter() required DealerStep dealerStep,
    required List<Side> sides,
    @InnerPieceIdConverter() required List<InnerPieceId> innerPieceIds,
    @OuterPieceIdConverter() required List<OuterPieceId> outerPieceIds,
    required int innerOffset,
    required int outerOffset,
  }) = _CakepokerRecord;

  factory CakepokerRecord.fromJson(Map<String, dynamic> json) =>
      _$CakepokerRecordFromJson(json);
}
