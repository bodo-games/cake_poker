import 'package:cake_poker/src/components/user_icon.dart';
import 'package:cake_poker/src/state/cakepoker_record.dart';
import 'package:cake_poker/src/state/game_room.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Player extends HookConsumerWidget {
  final Seat seat;
  final double width;
  final double height;
  const Player(this.seat, this.width, this.height);

  bool isLeft() {
    return ((seat == Seat.s3) || (seat == Seat.s4));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final player = ref
        .read(gameRoomState)
        .players
        .firstWhere((p) => p.seat == seat.rawValue);
    final side =
        ref.watch(cakepokerRecord).sides.firstWhere((s) => s.seat == seat);
    return RotatedBox(
      quarterTurns: isLeft() ? 9 : 3,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
        ),
        child: Row(
          children: [
            Text(
              (side.chips.toString() + 'chips'),
              style: const TextStyle(fontSize: 20),
            ),
            UserIcon(player.iconUrl, size: 30),
            Text(
              player.nickname,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
