import 'package:cake_poker/src/components/flip_view.dart';
import 'package:cake_poker/src/components/url_image.dart';
import 'package:cake_poker/src/config/image_names.dart';
import 'package:cake_poker/src/pages/cakepoker_play/put_box.dart';
import 'package:cake_poker/src/state/cakepoker_ui_state.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Board extends HookConsumerWidget {
  final double width;
  final double height;
  const Board(this.width, this.height);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('ボードのビルドが呼ばれました');
    final uiState = ref.watch(cakepokerUiState);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width * 0.25,
                height: width * 0.25,
                child: const PutBox(Seat.s4),
              ),
              SizedBox(
                width: width * 0.25,
                height: width * 0.25,
                child: const PutBox(Seat.s1),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              AnimatedRotation(
                duration: const Duration(milliseconds: 2000),
                curve: Curves.elasticOut,
                turns: uiState.outerCakeDegree / 360,
                child: SizedBox(
                  width: width * 0.9,
                  height: width * 0.9,
                  child: UrlImage.assetsName(ImageNames.partycakeOuter),
                ),
              ),
              AnimatedRotation(
                duration: const Duration(milliseconds: 2000),
                curve: Curves.elasticOut,
                turns: uiState.innerCakeDegree / 360,
                child: SizedBox(
                  width: width * 0.9 / 1.618,
                  height: width * 0.9 / 1.618,
                  child: UrlImage.assetsName(ImageNames.partycakeInner),
                ),
              ),
              SizedBox(
                width: width * 0.9 / 1.618,
                height: width * 0.9 / 1.618,
                child: FlipView(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width * 0.25,
                height: width * 0.25,
                child: const PutBox(Seat.s3),
              ),
              SizedBox(
                width: width * 0.25,
                height: width * 0.25,
                child: const PutBox(Seat.s2),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
