import 'package:freezed_annotation/freezed_annotation.dart';

part 'production.freezed.dart';

@freezed
class Production with _$Production {
  const factory Production({
    required final String productName,
    required final String imagePath,
    required final String location,
    required final DateTime startTime,
    required final DateTime endTime,
  }) = _Production;
}
