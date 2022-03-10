//
//
//

import 'package:cake_poker/src/router/navi_state.dart';
import 'package:cake_poker/src/router/page_id.dart';
import 'package:riverpod/riverpod.dart';

class Router {
  final Reader _read;
  Router(this._read);

  pushPage(PageId id) {
    final oldState = _read(naviState);
    var stack = List.of(oldState.stack); // コピー
    stack.add(id);
    final newState = NaviState(stack: stack);
    _read(naviState.notifier).update(newState);
  }

  setPages(List<PageId> stack) {
    final newState = NaviState(stack: stack);
    _read(naviState.notifier).update(newState);
  }

  popPage() {
    final oldState = _read(naviState);
    var stack = List.of(oldState.stack); // コピー
    stack.removeLast();
    final newState = NaviState(stack: stack);
    _read(naviState.notifier).update(newState);
  }
}

final router = Provider((ref) => Router(ref.read));
