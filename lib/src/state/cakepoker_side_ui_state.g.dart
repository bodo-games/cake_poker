// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cakepoker_side_ui_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CakepokerSideUiState _$$_CakepokerSideUiStateFromJson(
        Map<String, dynamic> json) =>
    _$_CakepokerSideUiState(
      seat: $enumDecode(_$SeatEnumMap, json['seat']),
      putCardId:
          const PlayingCardConverter().fromJson(json['put_card_id'] as int?),
      putCardDegree: (json['put_card_degree'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CakepokerSideUiStateToJson(
        _$_CakepokerSideUiState instance) =>
    <String, dynamic>{
      'seat': _$SeatEnumMap[instance.seat],
      'put_card_id': const PlayingCardConverter().toJson(instance.putCardId),
      'put_card_degree': instance.putCardDegree,
    };

const _$SeatEnumMap = {
  Seat.s1: 's1',
  Seat.s2: 's2',
  Seat.s3: 's3',
  Seat.s4: 's4',
};
