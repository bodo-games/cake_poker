// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cakepoker_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CakepokerUiState _$CakepokerUiStateFromJson(Map<String, dynamic> json) {
  return _CakepokerUiState.fromJson(json);
}

/// @nodoc
class _$CakepokerUiStateTearOff {
  const _$CakepokerUiStateTearOff();

  _CakepokerUiState call(
      {@FocusTargetConverter() required FocusTarget focusTarget,
      required bool waitingOthers,
      required bool canExit,
      required bool showExitModal,
      required double innerCakeDegree,
      required double outerCakeDegree,
      @PlayingCardConverter() required List<PlayingCard> dockHandCards,
      @BetLevelConverter() required List<BetLevel> dockBetLevels,
      required bool dockIsLocked,
      required PlayingCard? dockSelectedCard,
      required BetLevel? dockSelectedBetLevel,
      required bool spotlightMySide,
      required String? cardEffectImageName,
      required double cardEffectImageSize,
      required String? flatCardImageName,
      required String? flatOuterImageName,
      required String? flatInnerImageName,
      required String? comboName,
      required int comboNameWaveIndex,
      required List<CakepokerSideUiState> uiSides}) {
    return _CakepokerUiState(
      focusTarget: focusTarget,
      waitingOthers: waitingOthers,
      canExit: canExit,
      showExitModal: showExitModal,
      innerCakeDegree: innerCakeDegree,
      outerCakeDegree: outerCakeDegree,
      dockHandCards: dockHandCards,
      dockBetLevels: dockBetLevels,
      dockIsLocked: dockIsLocked,
      dockSelectedCard: dockSelectedCard,
      dockSelectedBetLevel: dockSelectedBetLevel,
      spotlightMySide: spotlightMySide,
      cardEffectImageName: cardEffectImageName,
      cardEffectImageSize: cardEffectImageSize,
      flatCardImageName: flatCardImageName,
      flatOuterImageName: flatOuterImageName,
      flatInnerImageName: flatInnerImageName,
      comboName: comboName,
      comboNameWaveIndex: comboNameWaveIndex,
      uiSides: uiSides,
    );
  }

  CakepokerUiState fromJson(Map<String, Object?> json) {
    return CakepokerUiState.fromJson(json);
  }
}

/// @nodoc
const $CakepokerUiState = _$CakepokerUiStateTearOff();

/// @nodoc
mixin _$CakepokerUiState {
  @FocusTargetConverter()
  FocusTarget get focusTarget => throw _privateConstructorUsedError;
  bool get waitingOthers => throw _privateConstructorUsedError;
  bool get canExit => throw _privateConstructorUsedError;
  bool get showExitModal => throw _privateConstructorUsedError;
  double get innerCakeDegree => throw _privateConstructorUsedError;
  double get outerCakeDegree => throw _privateConstructorUsedError;
  @PlayingCardConverter()
  List<PlayingCard> get dockHandCards => throw _privateConstructorUsedError;
  @BetLevelConverter()
  List<BetLevel> get dockBetLevels => throw _privateConstructorUsedError;
  bool get dockIsLocked => throw _privateConstructorUsedError;
  PlayingCard? get dockSelectedCard => throw _privateConstructorUsedError;
  BetLevel? get dockSelectedBetLevel =>
      throw _privateConstructorUsedError; // Effect
  bool get spotlightMySide => throw _privateConstructorUsedError;
  String? get cardEffectImageName => throw _privateConstructorUsedError;
  double get cardEffectImageSize => throw _privateConstructorUsedError;
  String? get flatCardImageName => throw _privateConstructorUsedError;
  String? get flatOuterImageName => throw _privateConstructorUsedError;
  String? get flatInnerImageName => throw _privateConstructorUsedError;
  String? get comboName => throw _privateConstructorUsedError;
  int get comboNameWaveIndex => throw _privateConstructorUsedError; // sides
  List<CakepokerSideUiState> get uiSides => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CakepokerUiStateCopyWith<CakepokerUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CakepokerUiStateCopyWith<$Res> {
  factory $CakepokerUiStateCopyWith(
          CakepokerUiState value, $Res Function(CakepokerUiState) then) =
      _$CakepokerUiStateCopyWithImpl<$Res>;
  $Res call(
      {@FocusTargetConverter() FocusTarget focusTarget,
      bool waitingOthers,
      bool canExit,
      bool showExitModal,
      double innerCakeDegree,
      double outerCakeDegree,
      @PlayingCardConverter() List<PlayingCard> dockHandCards,
      @BetLevelConverter() List<BetLevel> dockBetLevels,
      bool dockIsLocked,
      PlayingCard? dockSelectedCard,
      BetLevel? dockSelectedBetLevel,
      bool spotlightMySide,
      String? cardEffectImageName,
      double cardEffectImageSize,
      String? flatCardImageName,
      String? flatOuterImageName,
      String? flatInnerImageName,
      String? comboName,
      int comboNameWaveIndex,
      List<CakepokerSideUiState> uiSides});
}

/// @nodoc
class _$CakepokerUiStateCopyWithImpl<$Res>
    implements $CakepokerUiStateCopyWith<$Res> {
  _$CakepokerUiStateCopyWithImpl(this._value, this._then);

  final CakepokerUiState _value;
  // ignore: unused_field
  final $Res Function(CakepokerUiState) _then;

  @override
  $Res call({
    Object? focusTarget = freezed,
    Object? waitingOthers = freezed,
    Object? canExit = freezed,
    Object? showExitModal = freezed,
    Object? innerCakeDegree = freezed,
    Object? outerCakeDegree = freezed,
    Object? dockHandCards = freezed,
    Object? dockBetLevels = freezed,
    Object? dockIsLocked = freezed,
    Object? dockSelectedCard = freezed,
    Object? dockSelectedBetLevel = freezed,
    Object? spotlightMySide = freezed,
    Object? cardEffectImageName = freezed,
    Object? cardEffectImageSize = freezed,
    Object? flatCardImageName = freezed,
    Object? flatOuterImageName = freezed,
    Object? flatInnerImageName = freezed,
    Object? comboName = freezed,
    Object? comboNameWaveIndex = freezed,
    Object? uiSides = freezed,
  }) {
    return _then(_value.copyWith(
      focusTarget: focusTarget == freezed
          ? _value.focusTarget
          : focusTarget // ignore: cast_nullable_to_non_nullable
              as FocusTarget,
      waitingOthers: waitingOthers == freezed
          ? _value.waitingOthers
          : waitingOthers // ignore: cast_nullable_to_non_nullable
              as bool,
      canExit: canExit == freezed
          ? _value.canExit
          : canExit // ignore: cast_nullable_to_non_nullable
              as bool,
      showExitModal: showExitModal == freezed
          ? _value.showExitModal
          : showExitModal // ignore: cast_nullable_to_non_nullable
              as bool,
      innerCakeDegree: innerCakeDegree == freezed
          ? _value.innerCakeDegree
          : innerCakeDegree // ignore: cast_nullable_to_non_nullable
              as double,
      outerCakeDegree: outerCakeDegree == freezed
          ? _value.outerCakeDegree
          : outerCakeDegree // ignore: cast_nullable_to_non_nullable
              as double,
      dockHandCards: dockHandCards == freezed
          ? _value.dockHandCards
          : dockHandCards // ignore: cast_nullable_to_non_nullable
              as List<PlayingCard>,
      dockBetLevels: dockBetLevels == freezed
          ? _value.dockBetLevels
          : dockBetLevels // ignore: cast_nullable_to_non_nullable
              as List<BetLevel>,
      dockIsLocked: dockIsLocked == freezed
          ? _value.dockIsLocked
          : dockIsLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      dockSelectedCard: dockSelectedCard == freezed
          ? _value.dockSelectedCard
          : dockSelectedCard // ignore: cast_nullable_to_non_nullable
              as PlayingCard?,
      dockSelectedBetLevel: dockSelectedBetLevel == freezed
          ? _value.dockSelectedBetLevel
          : dockSelectedBetLevel // ignore: cast_nullable_to_non_nullable
              as BetLevel?,
      spotlightMySide: spotlightMySide == freezed
          ? _value.spotlightMySide
          : spotlightMySide // ignore: cast_nullable_to_non_nullable
              as bool,
      cardEffectImageName: cardEffectImageName == freezed
          ? _value.cardEffectImageName
          : cardEffectImageName // ignore: cast_nullable_to_non_nullable
              as String?,
      cardEffectImageSize: cardEffectImageSize == freezed
          ? _value.cardEffectImageSize
          : cardEffectImageSize // ignore: cast_nullable_to_non_nullable
              as double,
      flatCardImageName: flatCardImageName == freezed
          ? _value.flatCardImageName
          : flatCardImageName // ignore: cast_nullable_to_non_nullable
              as String?,
      flatOuterImageName: flatOuterImageName == freezed
          ? _value.flatOuterImageName
          : flatOuterImageName // ignore: cast_nullable_to_non_nullable
              as String?,
      flatInnerImageName: flatInnerImageName == freezed
          ? _value.flatInnerImageName
          : flatInnerImageName // ignore: cast_nullable_to_non_nullable
              as String?,
      comboName: comboName == freezed
          ? _value.comboName
          : comboName // ignore: cast_nullable_to_non_nullable
              as String?,
      comboNameWaveIndex: comboNameWaveIndex == freezed
          ? _value.comboNameWaveIndex
          : comboNameWaveIndex // ignore: cast_nullable_to_non_nullable
              as int,
      uiSides: uiSides == freezed
          ? _value.uiSides
          : uiSides // ignore: cast_nullable_to_non_nullable
              as List<CakepokerSideUiState>,
    ));
  }
}

/// @nodoc
abstract class _$CakepokerUiStateCopyWith<$Res>
    implements $CakepokerUiStateCopyWith<$Res> {
  factory _$CakepokerUiStateCopyWith(
          _CakepokerUiState value, $Res Function(_CakepokerUiState) then) =
      __$CakepokerUiStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@FocusTargetConverter() FocusTarget focusTarget,
      bool waitingOthers,
      bool canExit,
      bool showExitModal,
      double innerCakeDegree,
      double outerCakeDegree,
      @PlayingCardConverter() List<PlayingCard> dockHandCards,
      @BetLevelConverter() List<BetLevel> dockBetLevels,
      bool dockIsLocked,
      PlayingCard? dockSelectedCard,
      BetLevel? dockSelectedBetLevel,
      bool spotlightMySide,
      String? cardEffectImageName,
      double cardEffectImageSize,
      String? flatCardImageName,
      String? flatOuterImageName,
      String? flatInnerImageName,
      String? comboName,
      int comboNameWaveIndex,
      List<CakepokerSideUiState> uiSides});
}

/// @nodoc
class __$CakepokerUiStateCopyWithImpl<$Res>
    extends _$CakepokerUiStateCopyWithImpl<$Res>
    implements _$CakepokerUiStateCopyWith<$Res> {
  __$CakepokerUiStateCopyWithImpl(
      _CakepokerUiState _value, $Res Function(_CakepokerUiState) _then)
      : super(_value, (v) => _then(v as _CakepokerUiState));

  @override
  _CakepokerUiState get _value => super._value as _CakepokerUiState;

  @override
  $Res call({
    Object? focusTarget = freezed,
    Object? waitingOthers = freezed,
    Object? canExit = freezed,
    Object? showExitModal = freezed,
    Object? innerCakeDegree = freezed,
    Object? outerCakeDegree = freezed,
    Object? dockHandCards = freezed,
    Object? dockBetLevels = freezed,
    Object? dockIsLocked = freezed,
    Object? dockSelectedCard = freezed,
    Object? dockSelectedBetLevel = freezed,
    Object? spotlightMySide = freezed,
    Object? cardEffectImageName = freezed,
    Object? cardEffectImageSize = freezed,
    Object? flatCardImageName = freezed,
    Object? flatOuterImageName = freezed,
    Object? flatInnerImageName = freezed,
    Object? comboName = freezed,
    Object? comboNameWaveIndex = freezed,
    Object? uiSides = freezed,
  }) {
    return _then(_CakepokerUiState(
      focusTarget: focusTarget == freezed
          ? _value.focusTarget
          : focusTarget // ignore: cast_nullable_to_non_nullable
              as FocusTarget,
      waitingOthers: waitingOthers == freezed
          ? _value.waitingOthers
          : waitingOthers // ignore: cast_nullable_to_non_nullable
              as bool,
      canExit: canExit == freezed
          ? _value.canExit
          : canExit // ignore: cast_nullable_to_non_nullable
              as bool,
      showExitModal: showExitModal == freezed
          ? _value.showExitModal
          : showExitModal // ignore: cast_nullable_to_non_nullable
              as bool,
      innerCakeDegree: innerCakeDegree == freezed
          ? _value.innerCakeDegree
          : innerCakeDegree // ignore: cast_nullable_to_non_nullable
              as double,
      outerCakeDegree: outerCakeDegree == freezed
          ? _value.outerCakeDegree
          : outerCakeDegree // ignore: cast_nullable_to_non_nullable
              as double,
      dockHandCards: dockHandCards == freezed
          ? _value.dockHandCards
          : dockHandCards // ignore: cast_nullable_to_non_nullable
              as List<PlayingCard>,
      dockBetLevels: dockBetLevels == freezed
          ? _value.dockBetLevels
          : dockBetLevels // ignore: cast_nullable_to_non_nullable
              as List<BetLevel>,
      dockIsLocked: dockIsLocked == freezed
          ? _value.dockIsLocked
          : dockIsLocked // ignore: cast_nullable_to_non_nullable
              as bool,
      dockSelectedCard: dockSelectedCard == freezed
          ? _value.dockSelectedCard
          : dockSelectedCard // ignore: cast_nullable_to_non_nullable
              as PlayingCard?,
      dockSelectedBetLevel: dockSelectedBetLevel == freezed
          ? _value.dockSelectedBetLevel
          : dockSelectedBetLevel // ignore: cast_nullable_to_non_nullable
              as BetLevel?,
      spotlightMySide: spotlightMySide == freezed
          ? _value.spotlightMySide
          : spotlightMySide // ignore: cast_nullable_to_non_nullable
              as bool,
      cardEffectImageName: cardEffectImageName == freezed
          ? _value.cardEffectImageName
          : cardEffectImageName // ignore: cast_nullable_to_non_nullable
              as String?,
      cardEffectImageSize: cardEffectImageSize == freezed
          ? _value.cardEffectImageSize
          : cardEffectImageSize // ignore: cast_nullable_to_non_nullable
              as double,
      flatCardImageName: flatCardImageName == freezed
          ? _value.flatCardImageName
          : flatCardImageName // ignore: cast_nullable_to_non_nullable
              as String?,
      flatOuterImageName: flatOuterImageName == freezed
          ? _value.flatOuterImageName
          : flatOuterImageName // ignore: cast_nullable_to_non_nullable
              as String?,
      flatInnerImageName: flatInnerImageName == freezed
          ? _value.flatInnerImageName
          : flatInnerImageName // ignore: cast_nullable_to_non_nullable
              as String?,
      comboName: comboName == freezed
          ? _value.comboName
          : comboName // ignore: cast_nullable_to_non_nullable
              as String?,
      comboNameWaveIndex: comboNameWaveIndex == freezed
          ? _value.comboNameWaveIndex
          : comboNameWaveIndex // ignore: cast_nullable_to_non_nullable
              as int,
      uiSides: uiSides == freezed
          ? _value.uiSides
          : uiSides // ignore: cast_nullable_to_non_nullable
              as List<CakepokerSideUiState>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_CakepokerUiState extends _CakepokerUiState {
  const _$_CakepokerUiState(
      {@FocusTargetConverter() required this.focusTarget,
      required this.waitingOthers,
      required this.canExit,
      required this.showExitModal,
      required this.innerCakeDegree,
      required this.outerCakeDegree,
      @PlayingCardConverter() required this.dockHandCards,
      @BetLevelConverter() required this.dockBetLevels,
      required this.dockIsLocked,
      required this.dockSelectedCard,
      required this.dockSelectedBetLevel,
      required this.spotlightMySide,
      required this.cardEffectImageName,
      required this.cardEffectImageSize,
      required this.flatCardImageName,
      required this.flatOuterImageName,
      required this.flatInnerImageName,
      required this.comboName,
      required this.comboNameWaveIndex,
      required this.uiSides})
      : super._();

  factory _$_CakepokerUiState.fromJson(Map<String, dynamic> json) =>
      _$$_CakepokerUiStateFromJson(json);

  @override
  @FocusTargetConverter()
  final FocusTarget focusTarget;
  @override
  final bool waitingOthers;
  @override
  final bool canExit;
  @override
  final bool showExitModal;
  @override
  final double innerCakeDegree;
  @override
  final double outerCakeDegree;
  @override
  @PlayingCardConverter()
  final List<PlayingCard> dockHandCards;
  @override
  @BetLevelConverter()
  final List<BetLevel> dockBetLevels;
  @override
  final bool dockIsLocked;
  @override
  final PlayingCard? dockSelectedCard;
  @override
  final BetLevel? dockSelectedBetLevel;
  @override // Effect
  final bool spotlightMySide;
  @override
  final String? cardEffectImageName;
  @override
  final double cardEffectImageSize;
  @override
  final String? flatCardImageName;
  @override
  final String? flatOuterImageName;
  @override
  final String? flatInnerImageName;
  @override
  final String? comboName;
  @override
  final int comboNameWaveIndex;
  @override // sides
  final List<CakepokerSideUiState> uiSides;

  @override
  String toString() {
    return 'CakepokerUiState(focusTarget: $focusTarget, waitingOthers: $waitingOthers, canExit: $canExit, showExitModal: $showExitModal, innerCakeDegree: $innerCakeDegree, outerCakeDegree: $outerCakeDegree, dockHandCards: $dockHandCards, dockBetLevels: $dockBetLevels, dockIsLocked: $dockIsLocked, dockSelectedCard: $dockSelectedCard, dockSelectedBetLevel: $dockSelectedBetLevel, spotlightMySide: $spotlightMySide, cardEffectImageName: $cardEffectImageName, cardEffectImageSize: $cardEffectImageSize, flatCardImageName: $flatCardImageName, flatOuterImageName: $flatOuterImageName, flatInnerImageName: $flatInnerImageName, comboName: $comboName, comboNameWaveIndex: $comboNameWaveIndex, uiSides: $uiSides)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CakepokerUiState &&
            const DeepCollectionEquality()
                .equals(other.focusTarget, focusTarget) &&
            const DeepCollectionEquality()
                .equals(other.waitingOthers, waitingOthers) &&
            const DeepCollectionEquality().equals(other.canExit, canExit) &&
            const DeepCollectionEquality()
                .equals(other.showExitModal, showExitModal) &&
            const DeepCollectionEquality()
                .equals(other.innerCakeDegree, innerCakeDegree) &&
            const DeepCollectionEquality()
                .equals(other.outerCakeDegree, outerCakeDegree) &&
            const DeepCollectionEquality()
                .equals(other.dockHandCards, dockHandCards) &&
            const DeepCollectionEquality()
                .equals(other.dockBetLevels, dockBetLevels) &&
            const DeepCollectionEquality()
                .equals(other.dockIsLocked, dockIsLocked) &&
            const DeepCollectionEquality()
                .equals(other.dockSelectedCard, dockSelectedCard) &&
            const DeepCollectionEquality()
                .equals(other.dockSelectedBetLevel, dockSelectedBetLevel) &&
            const DeepCollectionEquality()
                .equals(other.spotlightMySide, spotlightMySide) &&
            const DeepCollectionEquality()
                .equals(other.cardEffectImageName, cardEffectImageName) &&
            const DeepCollectionEquality()
                .equals(other.cardEffectImageSize, cardEffectImageSize) &&
            const DeepCollectionEquality()
                .equals(other.flatCardImageName, flatCardImageName) &&
            const DeepCollectionEquality()
                .equals(other.flatOuterImageName, flatOuterImageName) &&
            const DeepCollectionEquality()
                .equals(other.flatInnerImageName, flatInnerImageName) &&
            const DeepCollectionEquality().equals(other.comboName, comboName) &&
            const DeepCollectionEquality()
                .equals(other.comboNameWaveIndex, comboNameWaveIndex) &&
            const DeepCollectionEquality().equals(other.uiSides, uiSides));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(focusTarget),
        const DeepCollectionEquality().hash(waitingOthers),
        const DeepCollectionEquality().hash(canExit),
        const DeepCollectionEquality().hash(showExitModal),
        const DeepCollectionEquality().hash(innerCakeDegree),
        const DeepCollectionEquality().hash(outerCakeDegree),
        const DeepCollectionEquality().hash(dockHandCards),
        const DeepCollectionEquality().hash(dockBetLevels),
        const DeepCollectionEquality().hash(dockIsLocked),
        const DeepCollectionEquality().hash(dockSelectedCard),
        const DeepCollectionEquality().hash(dockSelectedBetLevel),
        const DeepCollectionEquality().hash(spotlightMySide),
        const DeepCollectionEquality().hash(cardEffectImageName),
        const DeepCollectionEquality().hash(cardEffectImageSize),
        const DeepCollectionEquality().hash(flatCardImageName),
        const DeepCollectionEquality().hash(flatOuterImageName),
        const DeepCollectionEquality().hash(flatInnerImageName),
        const DeepCollectionEquality().hash(comboName),
        const DeepCollectionEquality().hash(comboNameWaveIndex),
        const DeepCollectionEquality().hash(uiSides)
      ]);

  @JsonKey(ignore: true)
  @override
  _$CakepokerUiStateCopyWith<_CakepokerUiState> get copyWith =>
      __$CakepokerUiStateCopyWithImpl<_CakepokerUiState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CakepokerUiStateToJson(this);
  }
}

abstract class _CakepokerUiState extends CakepokerUiState {
  const factory _CakepokerUiState(
      {@FocusTargetConverter() required FocusTarget focusTarget,
      required bool waitingOthers,
      required bool canExit,
      required bool showExitModal,
      required double innerCakeDegree,
      required double outerCakeDegree,
      @PlayingCardConverter() required List<PlayingCard> dockHandCards,
      @BetLevelConverter() required List<BetLevel> dockBetLevels,
      required bool dockIsLocked,
      required PlayingCard? dockSelectedCard,
      required BetLevel? dockSelectedBetLevel,
      required bool spotlightMySide,
      required String? cardEffectImageName,
      required double cardEffectImageSize,
      required String? flatCardImageName,
      required String? flatOuterImageName,
      required String? flatInnerImageName,
      required String? comboName,
      required int comboNameWaveIndex,
      required List<CakepokerSideUiState> uiSides}) = _$_CakepokerUiState;
  const _CakepokerUiState._() : super._();

  factory _CakepokerUiState.fromJson(Map<String, dynamic> json) =
      _$_CakepokerUiState.fromJson;

  @override
  @FocusTargetConverter()
  FocusTarget get focusTarget;
  @override
  bool get waitingOthers;
  @override
  bool get canExit;
  @override
  bool get showExitModal;
  @override
  double get innerCakeDegree;
  @override
  double get outerCakeDegree;
  @override
  @PlayingCardConverter()
  List<PlayingCard> get dockHandCards;
  @override
  @BetLevelConverter()
  List<BetLevel> get dockBetLevels;
  @override
  bool get dockIsLocked;
  @override
  PlayingCard? get dockSelectedCard;
  @override
  BetLevel? get dockSelectedBetLevel;
  @override // Effect
  bool get spotlightMySide;
  @override
  String? get cardEffectImageName;
  @override
  double get cardEffectImageSize;
  @override
  String? get flatCardImageName;
  @override
  String? get flatOuterImageName;
  @override
  String? get flatInnerImageName;
  @override
  String? get comboName;
  @override
  int get comboNameWaveIndex;
  @override // sides
  List<CakepokerSideUiState> get uiSides;
  @override
  @JsonKey(ignore: true)
  _$CakepokerUiStateCopyWith<_CakepokerUiState> get copyWith =>
      throw _privateConstructorUsedError;
}
