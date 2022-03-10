// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cakepoker_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CakepokerRecord _$CakepokerRecordFromJson(Map<String, dynamic> json) {
  return _CakepokerRecord.fromJson(json);
}

/// @nodoc
class _$CakepokerRecordTearOff {
  const _$CakepokerRecordTearOff();

  _CakepokerRecord call(
      {required String id,
      @PlayingCardConverter() required List<PlayingCard> deck,
      @DealerStepConverter() required DealerStep dealerStep,
      required List<Side> sides,
      @InnerPieceIdConverter() required List<InnerPieceId> innerPieceIds,
      @OuterPieceIdConverter() required List<OuterPieceId> outerPieceIds,
      required int innerOffset,
      required int outerOffset}) {
    return _CakepokerRecord(
      id: id,
      deck: deck,
      dealerStep: dealerStep,
      sides: sides,
      innerPieceIds: innerPieceIds,
      outerPieceIds: outerPieceIds,
      innerOffset: innerOffset,
      outerOffset: outerOffset,
    );
  }

  CakepokerRecord fromJson(Map<String, Object?> json) {
    return CakepokerRecord.fromJson(json);
  }
}

/// @nodoc
const $CakepokerRecord = _$CakepokerRecordTearOff();

/// @nodoc
mixin _$CakepokerRecord {
  String get id => throw _privateConstructorUsedError;
  @PlayingCardConverter()
  List<PlayingCard> get deck => throw _privateConstructorUsedError;
  @DealerStepConverter()
  DealerStep get dealerStep => throw _privateConstructorUsedError;
  List<Side> get sides => throw _privateConstructorUsedError;
  @InnerPieceIdConverter()
  List<InnerPieceId> get innerPieceIds => throw _privateConstructorUsedError;
  @OuterPieceIdConverter()
  List<OuterPieceId> get outerPieceIds => throw _privateConstructorUsedError;
  int get innerOffset => throw _privateConstructorUsedError;
  int get outerOffset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CakepokerRecordCopyWith<CakepokerRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CakepokerRecordCopyWith<$Res> {
  factory $CakepokerRecordCopyWith(
          CakepokerRecord value, $Res Function(CakepokerRecord) then) =
      _$CakepokerRecordCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @PlayingCardConverter() List<PlayingCard> deck,
      @DealerStepConverter() DealerStep dealerStep,
      List<Side> sides,
      @InnerPieceIdConverter() List<InnerPieceId> innerPieceIds,
      @OuterPieceIdConverter() List<OuterPieceId> outerPieceIds,
      int innerOffset,
      int outerOffset});
}

/// @nodoc
class _$CakepokerRecordCopyWithImpl<$Res>
    implements $CakepokerRecordCopyWith<$Res> {
  _$CakepokerRecordCopyWithImpl(this._value, this._then);

  final CakepokerRecord _value;
  // ignore: unused_field
  final $Res Function(CakepokerRecord) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? deck = freezed,
    Object? dealerStep = freezed,
    Object? sides = freezed,
    Object? innerPieceIds = freezed,
    Object? outerPieceIds = freezed,
    Object? innerOffset = freezed,
    Object? outerOffset = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deck: deck == freezed
          ? _value.deck
          : deck // ignore: cast_nullable_to_non_nullable
              as List<PlayingCard>,
      dealerStep: dealerStep == freezed
          ? _value.dealerStep
          : dealerStep // ignore: cast_nullable_to_non_nullable
              as DealerStep,
      sides: sides == freezed
          ? _value.sides
          : sides // ignore: cast_nullable_to_non_nullable
              as List<Side>,
      innerPieceIds: innerPieceIds == freezed
          ? _value.innerPieceIds
          : innerPieceIds // ignore: cast_nullable_to_non_nullable
              as List<InnerPieceId>,
      outerPieceIds: outerPieceIds == freezed
          ? _value.outerPieceIds
          : outerPieceIds // ignore: cast_nullable_to_non_nullable
              as List<OuterPieceId>,
      innerOffset: innerOffset == freezed
          ? _value.innerOffset
          : innerOffset // ignore: cast_nullable_to_non_nullable
              as int,
      outerOffset: outerOffset == freezed
          ? _value.outerOffset
          : outerOffset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CakepokerRecordCopyWith<$Res>
    implements $CakepokerRecordCopyWith<$Res> {
  factory _$CakepokerRecordCopyWith(
          _CakepokerRecord value, $Res Function(_CakepokerRecord) then) =
      __$CakepokerRecordCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @PlayingCardConverter() List<PlayingCard> deck,
      @DealerStepConverter() DealerStep dealerStep,
      List<Side> sides,
      @InnerPieceIdConverter() List<InnerPieceId> innerPieceIds,
      @OuterPieceIdConverter() List<OuterPieceId> outerPieceIds,
      int innerOffset,
      int outerOffset});
}

/// @nodoc
class __$CakepokerRecordCopyWithImpl<$Res>
    extends _$CakepokerRecordCopyWithImpl<$Res>
    implements _$CakepokerRecordCopyWith<$Res> {
  __$CakepokerRecordCopyWithImpl(
      _CakepokerRecord _value, $Res Function(_CakepokerRecord) _then)
      : super(_value, (v) => _then(v as _CakepokerRecord));

  @override
  _CakepokerRecord get _value => super._value as _CakepokerRecord;

  @override
  $Res call({
    Object? id = freezed,
    Object? deck = freezed,
    Object? dealerStep = freezed,
    Object? sides = freezed,
    Object? innerPieceIds = freezed,
    Object? outerPieceIds = freezed,
    Object? innerOffset = freezed,
    Object? outerOffset = freezed,
  }) {
    return _then(_CakepokerRecord(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      deck: deck == freezed
          ? _value.deck
          : deck // ignore: cast_nullable_to_non_nullable
              as List<PlayingCard>,
      dealerStep: dealerStep == freezed
          ? _value.dealerStep
          : dealerStep // ignore: cast_nullable_to_non_nullable
              as DealerStep,
      sides: sides == freezed
          ? _value.sides
          : sides // ignore: cast_nullable_to_non_nullable
              as List<Side>,
      innerPieceIds: innerPieceIds == freezed
          ? _value.innerPieceIds
          : innerPieceIds // ignore: cast_nullable_to_non_nullable
              as List<InnerPieceId>,
      outerPieceIds: outerPieceIds == freezed
          ? _value.outerPieceIds
          : outerPieceIds // ignore: cast_nullable_to_non_nullable
              as List<OuterPieceId>,
      innerOffset: innerOffset == freezed
          ? _value.innerOffset
          : innerOffset // ignore: cast_nullable_to_non_nullable
              as int,
      outerOffset: outerOffset == freezed
          ? _value.outerOffset
          : outerOffset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_CakepokerRecord extends _CakepokerRecord {
  const _$_CakepokerRecord(
      {required this.id,
      @PlayingCardConverter() required this.deck,
      @DealerStepConverter() required this.dealerStep,
      required this.sides,
      @InnerPieceIdConverter() required this.innerPieceIds,
      @OuterPieceIdConverter() required this.outerPieceIds,
      required this.innerOffset,
      required this.outerOffset})
      : super._();

  factory _$_CakepokerRecord.fromJson(Map<String, dynamic> json) =>
      _$$_CakepokerRecordFromJson(json);

  @override
  final String id;
  @override
  @PlayingCardConverter()
  final List<PlayingCard> deck;
  @override
  @DealerStepConverter()
  final DealerStep dealerStep;
  @override
  final List<Side> sides;
  @override
  @InnerPieceIdConverter()
  final List<InnerPieceId> innerPieceIds;
  @override
  @OuterPieceIdConverter()
  final List<OuterPieceId> outerPieceIds;
  @override
  final int innerOffset;
  @override
  final int outerOffset;

  @override
  String toString() {
    return 'CakepokerRecord(id: $id, deck: $deck, dealerStep: $dealerStep, sides: $sides, innerPieceIds: $innerPieceIds, outerPieceIds: $outerPieceIds, innerOffset: $innerOffset, outerOffset: $outerOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CakepokerRecord &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.deck, deck) &&
            const DeepCollectionEquality()
                .equals(other.dealerStep, dealerStep) &&
            const DeepCollectionEquality().equals(other.sides, sides) &&
            const DeepCollectionEquality()
                .equals(other.innerPieceIds, innerPieceIds) &&
            const DeepCollectionEquality()
                .equals(other.outerPieceIds, outerPieceIds) &&
            const DeepCollectionEquality()
                .equals(other.innerOffset, innerOffset) &&
            const DeepCollectionEquality()
                .equals(other.outerOffset, outerOffset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(deck),
      const DeepCollectionEquality().hash(dealerStep),
      const DeepCollectionEquality().hash(sides),
      const DeepCollectionEquality().hash(innerPieceIds),
      const DeepCollectionEquality().hash(outerPieceIds),
      const DeepCollectionEquality().hash(innerOffset),
      const DeepCollectionEquality().hash(outerOffset));

  @JsonKey(ignore: true)
  @override
  _$CakepokerRecordCopyWith<_CakepokerRecord> get copyWith =>
      __$CakepokerRecordCopyWithImpl<_CakepokerRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CakepokerRecordToJson(this);
  }
}

abstract class _CakepokerRecord extends CakepokerRecord {
  const factory _CakepokerRecord(
      {required String id,
      @PlayingCardConverter() required List<PlayingCard> deck,
      @DealerStepConverter() required DealerStep dealerStep,
      required List<Side> sides,
      @InnerPieceIdConverter() required List<InnerPieceId> innerPieceIds,
      @OuterPieceIdConverter() required List<OuterPieceId> outerPieceIds,
      required int innerOffset,
      required int outerOffset}) = _$_CakepokerRecord;
  const _CakepokerRecord._() : super._();

  factory _CakepokerRecord.fromJson(Map<String, dynamic> json) =
      _$_CakepokerRecord.fromJson;

  @override
  String get id;
  @override
  @PlayingCardConverter()
  List<PlayingCard> get deck;
  @override
  @DealerStepConverter()
  DealerStep get dealerStep;
  @override
  List<Side> get sides;
  @override
  @InnerPieceIdConverter()
  List<InnerPieceId> get innerPieceIds;
  @override
  @OuterPieceIdConverter()
  List<OuterPieceId> get outerPieceIds;
  @override
  int get innerOffset;
  @override
  int get outerOffset;
  @override
  @JsonKey(ignore: true)
  _$CakepokerRecordCopyWith<_CakepokerRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
