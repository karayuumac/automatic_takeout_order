import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'counter_state.freezed.dart';

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState({
    @Default(0) int value,
  }) = _CounterState;
}

class CounterStateNotifier extends StateNotifier<CounterState> {
  CounterStateNotifier() : super(const CounterState());

  void increment() => state = state.copyWith(value: state.value + 1);
}