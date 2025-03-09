import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/circular_button.dart';
import 'package:riverpod_counter/counter_state.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterValue = ref.watch(counterStateProvider);
    final counterNotifier = ref.read(counterStateProvider.notifier);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counterValue.toString(),
              style: const TextStyle(fontSize: 128),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularButton(
                  icon: Icons.remove,
                  onPressed: () => counterNotifier.decrement(),
                ),
                CircularButton(
                  icon: Icons.refresh,
                  onPressed: () => counterNotifier.reset(),
                ),
                CircularButton(
                  icon: Icons.add,
                  onPressed: () => counterNotifier.increment(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
