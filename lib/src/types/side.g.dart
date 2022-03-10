// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'side.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Side _$$_SideFromJson(Map<String, dynamic> json) => _$_Side(
      seat: $enumDecode(_$SeatEnumMap, json['seat']),
      playerStep: $enumDecode(_$PlayerStepEnumMap, json['player_step']),
      chips: json['chips'] as int,
      handCardIds: (json['hand_card_ids'] as List<dynamic>)
          .map((e) => $enumDecode(_$PlayingCardEnumMap, e))
          .toList(),
      betLevel: const BetLevelConverter().fromJson(json['bet_level'] as int?),
      putCardId:
          const PlayingCardConverter().fromJson(json['put_card_id'] as int?),
      lastCombo: $enumDecode(_$ComboEnumMap, json['last_combo']),
    );

Map<String, dynamic> _$$_SideToJson(_$_Side instance) => <String, dynamic>{
      'seat': _$SeatEnumMap[instance.seat],
      'player_step': _$PlayerStepEnumMap[instance.playerStep],
      'chips': instance.chips,
      'hand_card_ids':
          instance.handCardIds.map((e) => _$PlayingCardEnumMap[e]).toList(),
      'bet_level': const BetLevelConverter().toJson(instance.betLevel),
      'put_card_id': const PlayingCardConverter().toJson(instance.putCardId),
      'last_combo': _$ComboEnumMap[instance.lastCombo],
    };

const _$SeatEnumMap = {
  Seat.s1: 's1',
  Seat.s2: 's2',
  Seat.s3: 's3',
  Seat.s4: 's4',
};

const _$PlayerStepEnumMap = {
  PlayerStep.bet: 'bet',
  PlayerStep.waitingShuffle: 'waitingShuffle',
  PlayerStep.put: 'put',
  PlayerStep.waitingShowdown: 'waitingShowdown',
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

const _$ComboEnumMap = {
  Combo.start: 'start',
  Combo.rsf: 'rsf',
  Combo.sf: 'sf',
  Combo.fullHouse: 'fullHouse',
  Combo.flush: 'flush',
  Combo.straight: 'straight',
  Combo.twoPairs: 'twoPairs',
  Combo.double: 'double',
  Combo.triple: 'triple',
  Combo.miracle: 'miracle',
  Combo.kingJoker: 'kingJoker',
  Combo.numberPair: 'numberPair',
  Combo.suitPair: 'suitPair',
  Combo.joker: 'joker',
  Combo.noPairs: 'noPairs',
};
