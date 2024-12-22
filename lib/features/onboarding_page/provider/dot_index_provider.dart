//RIVERPOD PROVIDER TO MANAGE THE STATE OF THE DOTS AND INDEX
// FOR THE ONBOARDING PAGE

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dot_index_provider.g.dart';

@riverpod
class IndexDot extends _$IndexDot {
  @override
  int build() {
    return 0;
  }

  void changeIndex(int value) {
    state = value;
  }
}
