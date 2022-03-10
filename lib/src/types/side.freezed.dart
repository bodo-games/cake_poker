// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'side.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Side _$SideFromJson(Map<String, dynamic> json) {
  return _Side.fromJson(json);
}

/// @nodoc
class _$SideTearOff {
  const _$SideTearOff();

  _Side call(
      {@SeatConverter() required Seat seat,
      @PlayerStepConverter() required PlayerStep playerStep,
      required int chips,
      @PlayingCardConverter() required List<PlayingCard> handCardIds,
      @BetLevelConverter() required BetLevel? betLevel,
      @PlayingCardConverter() required PlayingCard? putCardId,
      @ComboConverter() required Combo lastCombo}) {
    return _Side(
      seat: seat,
      playerStep: playerStep,
      chips: chips,
      handCardIds: handCardIds,
      betLevel: betLevel,
      putCardId: putCardId,
      lastCombo: lastCombo,
    );
  }

  Side fromJson(Map<String, Object?> json) {
    return Side.fromJson(json);
  }
}

/// @nodoc
const $Side = _$SideTearOff();

/// @nodoc
mixin _$Side {
  @SeatConverter()
  Seat get seat => throw _privateConstructorUsedError;
  @PlayerStepConverter()
  PlayerStep get playerStep => throw _privateConstructorUsedError;
  int get chips => throw _privateConstructorUsedError;
  @PlayingCardConverter()
  List<PlayingCard> get handCardIds => throw _privateConstructorUsedError;
  @BetLevelConverter()
  BetLevel? get betLevel => throw _privateConstructorUsedError;
  @PlayingCardConverter()
  PlayingCard? get putCardId => throw _privateConstructorUsedError;
  @ComboConverter()
  Combo get lastCombo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SideCopyWith<Side> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideCopyWith<$Res> {
  factory $SideCopyWith(Side value, $Res Function(Side) then) =
      _$SideCopyWithImpl<$Res>;
  $Res call(
      {@SeatConverter() Seat seat,
      @PlayerStepConverter() PlayerStep playerStep,
      int chips,
      @PlayingCardConverter() List<PlayingCard> handCardIds,
      @BetLevelConverter() BetLevel? betLevel,
      @PlayingCardConverter() PlayingCard? putCardId,
      @ComboConverter() Combo lastCombo});
}

/// @nodoc
class _$SideCopyWithImpl<$Res> implements $SideCopyWith<$Res> {
  _$SideCopyWithImpl(this._value, this._then);

  final Side _value;
  // ignore: unused_field
  final $Res Function(Side) _then;

  @override
  $Res call({
    Object? seat = freezed,
    Object? playerStep = freezed,
    Object? chips = freezed,
    Object? handCardIds = freezed,
    Object? betLevel = freezed,
    Object? putCardId = freezed,
    Object? lastCombo = freezed,
  }) {
    return _then(_value.copyWith(
      seat: seat == freezed
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as Seat,
      playerStep: playerStep == freezed
          ? _value.playerStep
          : playerStep // ignore: cast_nullable_to_non_nullable
              as PlayerStep,
      chips: chips == freezed
          ? _value.chips
          : chips // ignore: cast_nullable_to_non_nullable
              as int,
      handCardIds: handCardIds == freezed
          ? _value.handCardIds
          : handCardIds // ignore: cast_nullable_to_non_nullable
              as List<PlayingCard>,
      betLevel: betLevel == freezed
          ? _value.betLevel
          : betLevel // ignore: cast_nullable_to_non_nullable
              as BetLevel?,
      putCardId: putCardId == freezed
          ? _value.putCardId
          : putCardId // ignore: cast_nullable_to_non_nullable
              as PlayingCard?,
      lastCombo: lastCombo == freezed
          ? _value.lastCombo
          : lastCombo // ignore: cast_nullable_to_non_nullable
              as Combo,
    ));
  }
}

/// @nodoc
abstract class _$SideCopyWith<$Res> implements $SideCopyWith<$Res> {
  factory _$SideCopyWith(_Side value, $Res Function(_Side) then) =
      __$SideCopyWithImpl<$Res>;
  @override
  $Res call(
      {@SeatConverter() Seat seat,
      @PlayerStepConverter() PlayerStep playerStep,
      int chips,
      @PlayingCardConverter() List<PlayingCard> handCardIds,
      @BetLevelConverter() BetLevel? betLevel,
      @PlayingCardConverter() PlayingCard? putCardId,
      @ComboConverter() Combo lastCombo});
}

/// @nodoc
class __$SideCopyWithImpl<$Res> extends _$SideCopyWithImpl<$Res>
    implements _$SideCopyWith<$Res> {
  __$SideCopyWithImpl(_Side _value, $Res Function(_Side) _then)
      : super(_value, (v) => _then(v as _Side));

  @override
  _Side get _value => super._value as _Side;

  @override
  $Res call({
    Object? seat = freezed,
    Object? playerStep = freezed,
    Object? chips = freezed,
    Object? handCardIds = freezed,
    Object? betLevel = freezed,
    Object? putCardId = freezed,
    Object? lastCombo = freezed,
  }) {
    return _then(_Side(
      seat: seat == freezed
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as Seat,
      playerStep: playerStep == freezed
          ? _value.playerStep
          : playerStep // ignore: cast_nullable_to_non_nullable
              as PlayerStep,
      chips: chips == freezed
          ? _value.chips
          : chips // ignore: cast_nullable_to_non_nullable
              as int,
      handCardIds: handCardIds == freezed
          ? _value.handCardIds
          : handCardIds // ignore: cast_nullable_to_non_nullable
              as List<PlayingCard>,
      betLevel: betLevel == freezed
          ? _value.betLevel
          : betLevel // ignore: cast_nullable_to_non_nullable
              as BetLevel?,
      putCardId: putCardId == freezed
          ? _value.putCardId
          : putCardId // ignore: cast_nullable_to_non_nullable
              as PlayingCard?,
      lastCombo: lastCombo == freezed
          ? _value.lastCombo
          : lastCombo // ignore: cast_nullable_to_non_nullable
              as Combo,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Side extends _Side {
  _$_Side(
      {@SeatConverter() required this.seat,
      @PlayerStepConverter() required this.playerStep,
      required this.chips,
      @PlayingCardConverter() required this.handCardIds,
      @BetLevelConverter() required this.betLevel,
      @PlayingCardConverter() required this.putCardId,
      @ComboConverter() required this.lastCombo})
      : super._();

  factory _$_Side.fromJson(Map<String, dynamic> json) => _$$_SideFromJson(json);

  @override
  @SeatConverter()
  final Seat seat;
  @override
  @PlayerStepConverter()
  final PlayerStep playerStep;
  @override
  final int chips;
  @override
  @PlayingCardConverter()
  final List<PlayingCard> handCardIds;
  @override
  @BetLevelConverter()
  final BetLevel? betLevel;
  @override
  @PlayingCardConverter()
  final PlayingCard? putCardId;
  @override
  @ComboConverter()
  final Combo lastCombo;

  @override
  String toString() {
    return 'Side(seat: $seat, playerStep: $playerStep, chips: $chips, handCardIds: $handCardIds, betLevel: $betLevel, putCardId: $putCardId, lastCombo: $lastCombo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Side &&
            const DeepCollectionEquality().equals(other.seat, seat) &&
            const DeepCollectionEquality()
                .equals(other.playerStep, playerStep) &&
            const DeepCollectionEquality().equals(other.chips, chips) &&
            const DeepCollectionEquality()
                .equals(other.handCardIds, handCardIds) &&
            const DeepCollectionEquality().equals(other.betLevel, betLevel) &&
            const DeepCollectionEquality().equals(other.putCardId, putCardId) &&
            const DeepCollectionEquality().equals(other.lastCombo, lastCombo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(seat),
      const DeepCollectionEquality().hash(playerStep),
      const DeepCollectionEquality().hash(chips),
      const DeepCollectionEquality().hash(handCardIds),
      const DeepCollectionEquality().hash(betLevel),
      const DeepCollectionEquality().hash(putCardId),
      const DeepCollectionEquality().hash(lastCombo));

  @JsonKey(ignore: true)
  @override
  _$SideCopyWith<_Side> get copyWith =>
      __$SideCopyWithImpl<_Side>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SideToJson(this);
  }
}

abstract class _Side extends Side {
  factory _Side(
      {@SeatConverter() required Seat seat,
      @PlayerStepConverter() required PlayerStep playerStep,
      required int chips,
      @PlayingCardConverter() required List<PlayingCard> handCardIds,
      @BetLevelConverter() required BetLevel? betLevel,
      @PlayingCardConverter() required PlayingCard? putCardId,
      @ComboConverter() required Combo lastCombo}) = _$_Side;
  _Side._() : super._();

  factory _Side.fromJson(Map<String, dynamic> json) = _$_Side.fromJson;

  @override
  @SeatConverter()
  Seat get seat;
  @override
  @PlayerStepConverter()
  PlayerStep get playerStep;
  @override
  int get chips;
  @override
  @PlayingCardConverter()
  List<PlayingCard> get handCardIds;
  @override
  @BetLevelConverter()
  BetLevel? get betLevel;
  @override
  @PlayingCardConverter()
  PlayingCard? get putCardId;
  @override
  @ComboConverter()
  Combo get lastCombo;
  @override
  @JsonKey(ignore: true)
  _$SideCopyWith<_Side> get copyWith => throw _privateConstructorUsedError;
}
