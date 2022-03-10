// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cakepoker_ui_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CakepokerUiState _$$_CakepokerUiStateFromJson(Map<String, dynamic> json) =>
    _$_CakepokerUiState(
      focusTarget: $enumDecode(_$FocusTargetEnumMap, json['focus_target']),
      waitingOthers: json['waiting_others'] as bool,
      canExit: json['can_exit'] as bool,
      showExitModal: json['show_exit_modal'] as bool,
      innerCakeDegree: (json['inner_cake_degree'] as num).toDouble(),
      outerCakeDegree: (json['outer_cake_degree'] as num).toDouble(),
      dockHandCards: (json['dock_hand_cards'] as List<dynamic>)
          .map((e) => $enumDecode(_$PlayingCardEnumMap, e))
          .toList(),
      dockBetLevels: (json['dock_bet_levels'] as List<dynamic>)
          .map((e) => $enumDecode(_$BetLevelEnumMap, e))
          .toList(),
      dockIsLocked: json['dock_is_locked'] as bool,
      dockSelectedCard:
          $enumDecodeNullable(_$PlayingCardEnumMap, json['dock_selected_card']),
      dockSelectedBetLevel: $enumDecodeNullable(
          _$BetLevelEnumMap, json['dock_selected_bet_level']),
      spotlightMySide: json['spotlight_my_side'] as bool,
      cardEffectImageName: json['card_effect_image_name'] as String?,
      cardEffectImageSize: (json['card_effect_image_size'] as num).toDouble(),
      flatCardImageName: json['flat_card_image_name'] as String?,
      flatOuterImageName: json['flat_outer_image_name'] as String?,
      flatInnerImageName: json['flat_inner_image_name'] as String?,
      comboName: json['combo_name'] as String?,
      comboNameWaveIndex: json['combo_name_wave_index'] as int,
      uiSides: (json['ui_sides'] as List<dynamic>)
          .map((e) => CakepokerSideUiState.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CakepokerUiStateToJson(_$_CakepokerUiState instance) =>
    <String, dynamic>{
      'focus_target': _$FocusTargetEnumMap[instance.focusTarget],
      'waiting_others': instance.waitingOthers,
      'can_exit': instance.canExit,
      'show_exit_modal': instance.showExitModal,
      'inner_cake_degree': instance.innerCakeDegree,
      'outer_cake_degree': instance.outerCakeDegree,
      'dock_hand_cards':
          instance.dockHandCards.map((e) => _$PlayingCardEnumMap[e]).toList(),
      'dock_bet_levels':
          instance.dockBetLevels.map((e) => _$BetLevelEnumMap[e]).toList(),
      'dock_is_locked': instance.dockIsLocked,
      'dock_selected_card': _$PlayingCardEnumMap[instance.dockSelectedCard],
      'dock_selected_bet_level':
          _$BetLevelEnumMap[instance.dockSelectedBetLevel],
      'spotlight_my_side': instance.spotlightMySide,
      'card_effect_image_name': instance.cardEffectImageName,
      'card_effect_image_size': instance.cardEffectImageSize,
      'flat_card_image_name': instance.flatCardImageName,
      'flat_outer_image_name': instance.flatOuterImageName,
      'flat_inner_image_name': instance.flatInnerImageName,
      'combo_name': instance.comboName,
      'combo_name_wave_index': instance.comboNameWaveIndex,
      'ui_sides': instance.uiSides,
    };

const _$FocusTargetEnumMap = {
  FocusTarget.all: 'all',
  FocusTarget.board: 'board',
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

const _$BetLevelEnumMap = {
  BetLevel.min: 'min',
  BetLevel.mid: 'mid',
  BetLevel.max: 'max',
};
