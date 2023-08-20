﻿import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success;
  const factory Result.error(Exception e) = Error;
}


// // ignore_for_file: public_member_api_docs, sort_constructors_first
// abstract class Result<T> {
//   factory Result.success(T data) = Success;
//   factory Result.error(Exception e) = Error;
// }

// class Success<T> implements Result<T> {
//   final T data;
//   Success( this.data,
//   );
// }

// class Error<T> implements Result<T> {
//   final Exception e;
//   Error( this.e,
//   );
// }
