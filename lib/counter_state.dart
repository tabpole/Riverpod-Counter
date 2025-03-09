import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'counter_state.g.dart';

@riverpod
class CounterState extends _$CounterState {
  @override
  int build() => 0;

  void increment() => state++;
  void decrement() => state--;
  void reset() => state = 0;
}
