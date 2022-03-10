import 'package:cake_poker/src/pages/cakepoker_play/board.dart';
import 'package:cake_poker/src/pages/cakepoker_play/dock_layer.dart';
import 'package:cake_poker/src/pages/cakepoker_play/header.dart';
import 'package:cake_poker/src/pages/cakepoker_play/player.dart';
import 'package:cake_poker/src/presenters/game_start_presenter.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CakepokerPlay extends HookConsumerWidget {
  final double headerH = 40;
  final double dockH = 100;
  final double playerW = 50;

  Widget playerView(
    Seat seat,
    double w,
    double h,
  ) {
    return SizedBox(
      width: w,
      height: h,
      child: Player(seat, w, h),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        WidgetsBinding.instance?.addPostFrameCallback((_) {
          debugPrint('PartycakePlay did builded.');

          final controller = ref.read(gameStartPresenter);
          controller.onOpenPartycakePalyPage();
        });
        return null;
      },
      const [],
    );
    final Size screenSize = MediaQuery.of(context).size;

    final stack = Stack(
      children: [
        Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              radius: screenSize.height / screenSize.width,
              colors: const [
                Color(0xFF008800),
                Colors.black,
              ],
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                // ヘッダー
                SizedBox(
                  width: screenSize.width,
                  height: headerH,
                  child: Header(),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: playerW,
                      height: (screenSize.height - headerH - dockH),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          playerView(
                            Seat.s4,
                            playerW,
                            (screenSize.height - headerH - dockH - 40) / 2.0,
                          ),
                          playerView(
                            Seat.s3,
                            playerW,
                            (screenSize.height - headerH - dockH - 40) / 2.0,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: (screenSize.width - playerW - playerW),
                      height: (screenSize.height - headerH - dockH),
                      child: Board(
                        (screenSize.width - playerW - playerW),
                        (screenSize.height - headerH - dockH),
                      ),
                    ),
                    SizedBox(
                      width: playerW,
                      height: (screenSize.height - headerH - dockH),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          playerView(
                            Seat.s1,
                            playerW,
                            (screenSize.height - headerH - dockH - 40) / 2.0,
                          ),
                          playerView(
                            Seat.s2,
                            playerW,
                            (screenSize.height - headerH - dockH - 40) / 2.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: screenSize.width - 60,
                  height: dockH,
                  child: null,
                ),
              ],
            ),
          ),
        ),
        Column(
          children: [
            const Spacer(),
            SizedBox(
              width: screenSize.width,
              height: screenSize.height,
              child: DockLayer(screenSize.width - 60, dockH),
            ),
          ],
        ),
      ],
    );
    return stack;
  }
}
