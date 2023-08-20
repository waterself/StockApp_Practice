// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyInfoState _$CompanyInfoStateFromJson(Map<String, dynamic> json) {
  return _CompanyInfoState.fromJson(json);
}

/// @nodoc
mixin _$CompanyInfoState {
  CompanyInfo? get companyInfo => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyInfoStateCopyWith<CompanyInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInfoStateCopyWith<$Res> {
  factory $CompanyInfoStateCopyWith(
          CompanyInfoState value, $Res Function(CompanyInfoState) then) =
      _$CompanyInfoStateCopyWithImpl<$Res, CompanyInfoState>;
  @useResult
  $Res call({CompanyInfo? companyInfo, bool isLoading, String? errorMessage});

  $CompanyInfoCopyWith<$Res>? get companyInfo;
}

/// @nodoc
class _$CompanyInfoStateCopyWithImpl<$Res, $Val extends CompanyInfoState>
    implements $CompanyInfoStateCopyWith<$Res> {
  _$CompanyInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyInfo = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      companyInfo: freezed == companyInfo
          ? _value.companyInfo
          : companyInfo // ignore: cast_nullable_to_non_nullable
              as CompanyInfo?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CompanyInfoCopyWith<$Res>? get companyInfo {
    if (_value.companyInfo == null) {
      return null;
    }

    return $CompanyInfoCopyWith<$Res>(_value.companyInfo!, (value) {
      return _then(_value.copyWith(companyInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CompanyInfoStateCopyWith<$Res>
    implements $CompanyInfoStateCopyWith<$Res> {
  factory _$$_CompanyInfoStateCopyWith(
          _$_CompanyInfoState value, $Res Function(_$_CompanyInfoState) then) =
      __$$_CompanyInfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CompanyInfo? companyInfo, bool isLoading, String? errorMessage});

  @override
  $CompanyInfoCopyWith<$Res>? get companyInfo;
}

/// @nodoc
class __$$_CompanyInfoStateCopyWithImpl<$Res>
    extends _$CompanyInfoStateCopyWithImpl<$Res, _$_CompanyInfoState>
    implements _$$_CompanyInfoStateCopyWith<$Res> {
  __$$_CompanyInfoStateCopyWithImpl(
      _$_CompanyInfoState _value, $Res Function(_$_CompanyInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyInfo = freezed,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_CompanyInfoState(
      companyInfo: freezed == companyInfo
          ? _value.companyInfo
          : companyInfo // ignore: cast_nullable_to_non_nullable
              as CompanyInfo?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyInfoState implements _CompanyInfoState {
  const _$_CompanyInfoState(
      {this.companyInfo, this.isLoading = false, this.errorMessage});

  factory _$_CompanyInfoState.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyInfoStateFromJson(json);

  @override
  final CompanyInfo? companyInfo;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CompanyInfoState(companyInfo: $companyInfo, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyInfoState &&
            (identical(other.companyInfo, companyInfo) ||
                other.companyInfo == companyInfo) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, companyInfo, isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyInfoStateCopyWith<_$_CompanyInfoState> get copyWith =>
      __$$_CompanyInfoStateCopyWithImpl<_$_CompanyInfoState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyInfoStateToJson(
      this,
    );
  }
}

abstract class _CompanyInfoState implements CompanyInfoState {
  const factory _CompanyInfoState(
      {final CompanyInfo? companyInfo,
      final bool isLoading,
      final String? errorMessage}) = _$_CompanyInfoState;

  factory _CompanyInfoState.fromJson(Map<String, dynamic> json) =
      _$_CompanyInfoState.fromJson;

  @override
  CompanyInfo? get companyInfo;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyInfoStateCopyWith<_$_CompanyInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
