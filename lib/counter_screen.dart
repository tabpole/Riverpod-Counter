import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/circular_button.dart';
import 'package:riverpod_counter/counter_state.dart';

class Counter extends ConsumerWidget {
  const Counter({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(counterStateProvider).toString();
    final counter = ref.read(counterStateProvider.notifier);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: const TextStyle(fontSize: 128),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularButton(
                  icon: Icons.remove,
                  onPressed: () => counter.decrement(),
                ),
                CircularButton(
                  icon: Icons.refresh,
                  onPressed: () => counter.reset(),
                ),
                CircularButton(
                  icon: Icons.add,
                  onPressed: () => counter.increment(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
