import 'dart:math';
import 'package:cake_poker/src/presenters/bet_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Header extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('ここが呼ばれすぎていないか');
    final aniCon =
        useAnimationController(duration: Duration(milliseconds: 1000));
    final Animatable<double> _animatable = Tween<double>(
      begin: 0.0,
      end: 90.0,
    );
    late final Animation<double> _animation = _animatable.animate(aniCon);

    final a = useState(0.0);

    return SizedBox(
      height: 60,
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              ref.read(betPresenter).onTapExit();
            },
            child: const Text('Exit'),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint('here');
              a.value += 180;
              // aniCon.forward();
              // final oldUiState = ref.read(partycakeUiState);
              // debugPrint(
              //     '${oldUiState.outerCakeDegree} から ${oldUiState.outerCakeDegree + 90} へ');
              // final newUiState = oldUiState.copyWith(
              //     outerCakeDegree: oldUiState.outerCakeDegree + 90);
              // ref.read(partycakeUiState.notifier).update(newUiState);
            },
            child: const Text('Debug'),
          ),
          //FlipView(),
          const Spacer(),
        ],
      ),
    );
  }
}
