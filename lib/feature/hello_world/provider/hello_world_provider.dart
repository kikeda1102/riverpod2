// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hello_world_provider.g.dart';

/// ここに 'Hello World' を提供するProviderを定義する。
/// Riverpod Generatorを用いて実装してみよう。

// helloWorldProviderを定義する。
@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello World';
}
