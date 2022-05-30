// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'production.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Production {
  String get productName => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductionCopyWith<Production> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCopyWith<$Res> {
  factory $ProductionCopyWith(
          Production value, $Res Function(Production) then) =
      _$ProductionCopyWithImpl<$Res>;
  $Res call(
      {String productName,
      String imagePath,
      String location,
      DateTime startTime,
      DateTime endTime});
}

/// @nodoc
class _$ProductionCopyWithImpl<$Res> implements $ProductionCopyWith<$Res> {
  _$ProductionCopyWithImpl(this._value, this._then);

  final Production _value;
  // ignore: unused_field
  final $Res Function(Production) _then;

  @override
  $Res call({
    Object? productName = freezed,
    Object? imagePath = freezed,
    Object? location = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductionCopyWith<$Res>
    implements $ProductionCopyWith<$Res> {
  factory _$$_ProductionCopyWith(
          _$_Production value, $Res Function(_$_Production) then) =
      __$$_ProductionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String productName,
      String imagePath,
      String location,
      DateTime startTime,
      DateTime endTime});
}

/// @nodoc
class __$$_ProductionCopyWithImpl<$Res> extends _$ProductionCopyWithImpl<$Res>
    implements _$$_ProductionCopyWith<$Res> {
  __$$_ProductionCopyWithImpl(
      _$_Production _value, $Res Function(_$_Production) _then)
      : super(_value, (v) => _then(v as _$_Production));

  @override
  _$_Production get _value => super._value as _$_Production;

  @override
  $Res call({
    Object? productName = freezed,
    Object? imagePath = freezed,
    Object? location = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$_Production(
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Production implements _Production {
  const _$_Production(
      {required this.productName,
      required this.imagePath,
      required this.location,
      required this.startTime,
      required this.endTime});

  @override
  final String productName;
  @override
  final String imagePath;
  @override
  final String location;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;

  @override
  String toString() {
    return 'Production(productName: $productName, imagePath: $imagePath, location: $location, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Production &&
            const DeepCollectionEquality()
                .equals(other.productName, productName) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productName),
      const DeepCollectionEquality().hash(imagePath),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime));

  @JsonKey(ignore: true)
  @override
  _$$_ProductionCopyWith<_$_Production> get copyWith =>
      __$$_ProductionCopyWithImpl<_$_Production>(this, _$identity);
}

abstract class _Production implements Production {
  const factory _Production(
      {required final String productName,
      required final String imagePath,
      required final String location,
      required final DateTime startTime,
      required final DateTime endTime}) = _$_Production;

  @override
  String get productName => throw _privateConstructorUsedError;
  @override
  String get imagePath => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  DateTime get startTime => throw _privateConstructorUsedError;
  @override
  DateTime get endTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductionCopyWith<_$_Production> get copyWith =>
      throw _privateConstructorUsedError;
}
