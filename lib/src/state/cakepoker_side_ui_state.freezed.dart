// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cakepoker_side_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CakepokerSideUiState _$CakepokerSideUiStateFromJson(Map<String, dynamic> json) {
  return _CakepokerSideUiState.fromJson(json);
}

/// @nodoc
class _$CakepokerSideUiStateTearOff {
  const _$CakepokerSideUiStateTearOff();

  _CakepokerSideUiState call(
      {@SeatConverter() required Seat seat,
      @PlayingCardConverter() required PlayingCard? putCardId,
      required double putCardDegree}) {
    return _CakepokerSideUiState(
      seat: seat,
      putCardId: putCardId,
      putCardDegree: putCardDegree,
    );
  }

  CakepokerSideUiState fromJson(Map<String, Object?> json) {
    return CakepokerSideUiState.fromJson(json);
  }
}

/// @nodoc
const $CakepokerSideUiState = _$CakepokerSideUiStateTearOff();

/// @nodoc
mixin _$CakepokerSideUiState {
  @SeatConverter()
  Seat get seat => throw _privateConstructorUsedError;
  @PlayingCardConverter()
  PlayingCard? get putCardId => throw _privateConstructorUsedError;
  double get putCardDegree => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CakepokerSideUiStateCopyWith<CakepokerSideUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CakepokerSideUiStateCopyWith<$Res> {
  factory $CakepokerSideUiStateCopyWith(CakepokerSideUiState value,
          $Res Function(CakepokerSideUiState) then) =
      _$CakepokerSideUiStateCopyWithImpl<$Res>;
  $Res call(
      {@SeatConverter() Seat seat,
      @PlayingCardConverter() PlayingCard? putCardId,
      double putCardDegree});
}

/// @nodoc
class _$CakepokerSideUiStateCopyWithImpl<$Res>
    implements $CakepokerSideUiStateCopyWith<$Res> {
  _$CakepokerSideUiStateCopyWithImpl(this._value, this._then);

  final CakepokerSideUiState _value;
  // ignore: unused_field
  final $Res Function(CakepokerSideUiState) _then;

  @override
  $Res call({
    Object? seat = freezed,
    Object? putCardId = freezed,
    Object? putCardDegree = freezed,
  }) {
    return _then(_value.copyWith(
      seat: seat == freezed
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as Seat,
      putCardId: putCardId == freezed
          ? _value.putCardId
          : putCardId // ignore: cast_nullable_to_non_nullable
              as PlayingCard?,
      putCardDegree: putCardDegree == freezed
          ? _value.putCardDegree
          : putCardDegree // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$CakepokerSideUiStateCopyWith<$Res>
    implements $CakepokerSideUiStateCopyWith<$Res> {
  factory _$CakepokerSideUiStateCopyWith(_CakepokerSideUiState value,
          $Res Function(_CakepokerSideUiState) then) =
      __$CakepokerSideUiStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@SeatConverter() Seat seat,
      @PlayingCardConverter() PlayingCard? putCardId,
      double putCardDegree});
}

/// @nodoc
class __$CakepokerSideUiStateCopyWithImpl<$Res>
    extends _$CakepokerSideUiStateCopyWithImpl<$Res>
    implements _$CakepokerSideUiStateCopyWith<$Res> {
  __$CakepokerSideUiStateCopyWithImpl(
      _CakepokerSideUiState _value, $Res Function(_CakepokerSideUiState) _then)
      : super(_value, (v) => _then(v as _CakepokerSideUiState));

  @override
  _CakepokerSideUiState get _value => super._value as _CakepokerSideUiState;

  @override
  $Res call({
    Object? seat = freezed,
    Object? putCardId = freezed,
    Object? putCardDegree = freezed,
  }) {
    return _then(_CakepokerSideUiState(
      seat: seat == freezed
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as Seat,
      putCardId: putCardId == freezed
          ? _value.putCardId
          : putCardId // ignore: cast_nullable_to_non_nullable
              as PlayingCard?,
      putCardDegree: putCardDegree == freezed
          ? _value.putCardDegree
          : putCardDegree // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_CakepokerSideUiState extends _CakepokerSideUiState {
  const _$_CakepokerSideUiState(
      {@SeatConverter() required this.seat,
      @PlayingCardConverter() required this.putCardId,
      required this.putCardDegree})
      : super._();

  factory _$_CakepokerSideUiState.fromJson(Map<String, dynamic> json) =>
      _$$_CakepokerSideUiStateFromJson(json);

  @override
  @SeatConverter()
  final Seat seat;
  @override
  @PlayingCardConverter()
  final PlayingCard? putCardId;
  @override
  final double putCardDegree;

  @override
  String toString() {
    return 'CakepokerSideUiState(seat: $seat, putCardId: $putCardId, putCardDegree: $putCardDegree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CakepokerSideUiState &&
            const DeepCollectionEquality().equals(other.seat, seat) &&
            const DeepCollectionEquality().equals(other.putCardId, putCardId) &&
            const DeepCollectionEquality()
                .equals(other.putCardDegree, putCardDegree));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(seat),
      const DeepCollectionEquality().hash(putCardId),
      const DeepCollectionEquality().hash(putCardDegree));

  @JsonKey(ignore: true)
  @override
  _$CakepokerSideUiStateCopyWith<_CakepokerSideUiState> get copyWith =>
      __$CakepokerSideUiStateCopyWithImpl<_CakepokerSideUiState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CakepokerSideUiStateToJson(this);
  }
}

abstract class _CakepokerSideUiState extends CakepokerSideUiState {
  const factory _CakepokerSideUiState(
      {@SeatConverter() required Seat seat,
      @PlayingCardConverter() required PlayingCard? putCardId,
      required double putCardDegree}) = _$_CakepokerSideUiState;
  const _CakepokerSideUiState._() : super._();

  factory _CakepokerSideUiState.fromJson(Map<String, dynamic> json) =
      _$_CakepokerSideUiState.fromJson;

  @override
  @SeatConverter()
  Seat get seat;
  @override
  @PlayingCardConverter()
  PlayingCard? get putCardId;
  @override
  double get putCardDegree;
  @override
  @JsonKey(ignore: true)
  _$CakepokerSideUiStateCopyWith<_CakepokerSideUiState> get copyWith =>
      throw _privateConstructorUsedError;
}
