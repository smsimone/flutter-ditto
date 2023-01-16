import 'package:flutter/material.dart' hide Text;
import 'package:flutter_ditto/api/models/text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ditto_state.freezed.dart';

@freezed
class DittoState with _$DittoState {
  const factory DittoState({
    @Default([]) List<Locale> locales,
    @Default([]) List<Text> texts,
    @Default([]) List<String > keys,
  }) = _DittoState;
}
