import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod2/config/router/router_provider.dart';
// import 'package:riverpod2/feature/hello_world/page/hello_world_page.dart';
// import 'package:riverpod2/feature/todo/page/todo/todo_page.dart';

import 'config/firebase/firebase_options.dart';
// import 'feature/couner/page/counter_page.dart';
import 'feature/todo/page/todo/todo_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    /// ProviderScopeで囲むことでproviderを使用することができる
    ProviderScope(
      overrides: [
        /// ここに表示させたいPageのpathを指定
        initialLocationProvider.overrideWithValue(ToDoPage.path),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(goRouterProvider),
    );
  }
}
