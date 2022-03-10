import 'package:cake_poker/src/pages/parent_app.dart';
import 'package:cake_poker/src/presenters/game_start_presenter.dart';
import 'package:cake_poker/src/router/navi_state.dart';
import 'package:cake_poker/src/router/navi_window.dart';
import 'package:cake_poker/src/router/router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// 公開ページ
class CakepokerPage extends StatelessWidget {
  /// ページを閉じるとき
  final void Function() onGamePageClose;

  /// pass GameId and onGamePageClose function
  CakepokerPage({
    required this.onGamePageClose,
  }) {
    ParentApp.onGamePageClose = onGamePageClose;
  }
  @override
  Widget build(BuildContext context) {
    final _page = _CakepokerPage();
    final scope = ProviderScope(child: _page);
    return scope;
  }
}

// ProviderScope で囲むために分離
// 本体ページ
class _CakepokerPage extends HookConsumerWidget {
  const _CakepokerPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        WidgetsBinding.instance?.addPostFrameCallback((_) {
          debugPrint('_CakepokerPage did builded.');
          ref.read(gameStartPresenter).willOpenCakepokerPage();
        });
        return null;
      },
      const [],
    );
    final _naviState = ref.watch(naviState);
    final naviWindow = NaviWindow(
      state: _naviState,
      popPage: () {
        ref.read(router).popPage();
      },
    );
    final scaffold = Scaffold(body: naviWindow);
    return scaffold;
  }
}
