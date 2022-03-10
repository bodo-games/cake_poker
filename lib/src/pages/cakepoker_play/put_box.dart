import 'package:cake_poker/src/components/url_image.dart';
import 'package:cake_poker/src/config/image_names.dart';
import 'package:cake_poker/src/state/cakepoker_ui_state.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PutBox extends HookConsumerWidget {
  final Seat seat;
  const PutBox(this.seat);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: - Uiの方を参照する
    final uiState = ref.watch(cakepokerUiState);
    final sideUi = uiState.uiSides.firstWhere((s) => s.seat == seat);
    final PlayingCard? cardId = sideUi.putCardId;
    return Stack(
      children: [
        UrlImage.assetsName(ImageNames.partycakePutBox),
        if (cardId != null) PlayingCardImage(cardId),
      ],
    );
  }
}
