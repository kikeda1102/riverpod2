import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod2/feature/couner/provider/counter_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  static const path = '/counter';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// stateそのものを見たいなら
    /// ref.watch(provider)
    ///
    /// notifierをみたいなら
    /// ref.read(provider.notifier)

    return Scaffold(
      body: Center(

          /// ここに数字を表示させよう
          child: Text(ref.watch(counterProvider).toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// ここでカウントアップ関数を実行させよう
          ref.read(counterProvider.notifier).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
