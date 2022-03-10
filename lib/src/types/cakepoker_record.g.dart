// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cakepoker_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CakepokerRecord _$$_CakepokerRecordFromJson(Map<String, dynamic> json) =>
    _$_CakepokerRecord(
      id: json['id'] as String,
      deck: (json['deck'] as List<dynamic>)
          .map((e) => $enumDecode(_$PlayingCardEnumMap, e))
          .toList(),
      dealerStep: $enumDecode(_$DealerStepEnumMap, json['dealer_step']),
      sides: (json['sides'] as List<dynamic>)
          .map((e) => Side.fromJson(e as Map<String, dynamic>))
          .toList(),
      innerPieceIds: (json['inner_piece_ids'] as List<dynamic>)
          .map((e) => $enumDecode(_$InnerPieceIdEnumMap, e))
          .toList(),
      outerPieceIds: (json['outer_piece_ids'] as List<dynamic>)
          .map((e) => $enumDecode(_$OuterPieceIdEnumMap, e))
          .toList(),
      innerOffset: json['inner_offset'] as int,
      outerOffset: json['outer_offset'] as int,
    );

Map<String, dynamic> _$$_CakepokerRecordToJson(_$_CakepokerRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deck': instance.deck.map((e) => _$PlayingCardEnumMap[e]).toList(),
      'dealer_step': _$DealerStepEnumMap[instance.dealerStep],
      'sides': instance.sides,
      'inner_piece_ids':
          instance.innerPieceIds.map((e) => _$InnerPieceIdEnumMap[e]).toList(),
      'outer_piece_ids':
          instance.outerPieceIds.map((e) => _$OuterPieceIdEnumMap[e]).toList(),
      'inner_offset': instance.innerOffset,
      'outer_offset': instance.outerOffset,
    };

const _$PlayingCardEnumMap = {
  PlayingCard.back: 'back',
  PlayingCard.spade1: 'spade1',
  PlayingCard.spade2: 'spade2',
  PlayingCard.spade3: 'spade3',
  PlayingCard.spade4: 'spade4',
  PlayingCard.spade5: 'spade5',
  PlayingCard.spade6: 'spade6',
  PlayingCard.spade7: 'spade7',
  PlayingCard.spade8: 'spade8',
  PlayingCard.spade9: 'spade9',
  PlayingCard.spade10: 'spade10',
  PlayingCard.spade11: 'spade11',
  PlayingCard.spade12: 'spade12',
  PlayingCard.spade13: 'spade13',
  PlayingCard.heart1: 'heart1',
  PlayingCard.heart2: 'heart2',
  PlayingCard.heart3: 'heart3',
  PlayingCard.heart4: 'heart4',
  PlayingCard.heart5: 'heart5',
  PlayingCard.heart6: 'heart6',
  PlayingCard.heart7: 'heart7',
  PlayingCard.heart8: 'heart8',
  PlayingCard.heart9: 'heart9',
  PlayingCard.heart10: 'heart10',
  PlayingCard.heart11: 'heart11',
  PlayingCard.heart12: 'heart12',
  PlayingCard.heart13: 'heart13',
  PlayingCard.diamond1: 'diamond1',
  PlayingCard.diamond2: 'diamond2',
  PlayingCard.diamond3: 'diamond3',
  PlayingCard.diamond4: 'diamond4',
  PlayingCard.diamond5: 'diamond5',
  PlayingCard.diamond6: 'diamond6',
  PlayingCard.diamond7: 'diamond7',
  PlayingCard.diamond8: 'diamond8',
  PlayingCard.diamond9: 'diamond9',
  PlayingCard.diamond10: 'diamond10',
  PlayingCard.diamond11: 'diamond11',
  PlayingCard.diamond12: 'diamond12',
  PlayingCard.diamond13: 'diamond13',
  PlayingCard.club1: 'club1',
  PlayingCard.club2: 'club2',
  PlayingCard.club3: 'club3',
  PlayingCard.club4: 'club4',
  PlayingCard.club5: 'club5',
  PlayingCard.club6: 'club6',
  PlayingCard.club7: 'club7',
  PlayingCard.club8: 'club8',
  PlayingCard.club9: 'club9',
  PlayingCard.club10: 'club10',
  PlayingCard.club11: 'club11',
  PlayingCard.club12: 'club12',
  PlayingCard.club13: 'club13',
  PlayingCard.blackJocker: 'blackJocker',
  PlayingCard.whiteJocker: 'whiteJocker',
};

const _$DealerStepEnumMap = {
  DealerStep.waitingBet: 'waitingBet',
  DealerStep.shuffle: 'shuffle',
  DealerStep.waitingPut: 'waitingPut',
  DealerStep.showdown: 'showdown',
};

const _$InnerPieceIdEnumMap = {
  InnerPieceId.club: 'club',
  InnerPieceId.heart: 'heart',
  InnerPieceId.joker: 'joker',
  InnerPieceId.diamond: 'diamond',
};

const _$OuterPieceIdEnumMap = {
  OuterPieceId.diamond12: 'diamond12',
  OuterPieceId.club11: 'club11',
  OuterPieceId.spade13: 'spade13',
  OuterPieceId.heart1: 'heart1',
};
