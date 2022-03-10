import 'package:cake_poker/src/components/selectable_border_button.dart';
import 'package:cake_poker/src/pages/cakepoker_play/bet_level_image.dart';
import 'package:cake_poker/src/presenters/bet_presenter.dart';
import 'package:cake_poker/src/presenters/put_presenter.dart';
import 'package:cake_poker/src/state/cakepoker_ui_state.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DockLayer extends HookConsumerWidget {
  final double dockW;
  final double dockH;
  const DockLayer(this.dockW, this.dockH);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiState = ref.watch(cakepokerUiState);
    final handCardIds = uiState.dockHandCards;
    final betLevels = uiState.dockBetLevels;

    return Column(
      children: [
        const Spacer(),
        if (uiState.dockSelectedCard != null)
          Container(
            width: dockW,
            height: dockH,
            padding: const EdgeInsets.all(6),
            child: ElevatedButton(
              onPressed: () {
                ref.read(putPresenter).onTapPutButton();
              },
              child: const Text('PUT'),
            ),
          ),
        if (uiState.dockSelectedBetLevel != null)
          Container(
            width: dockW,
            height: dockH,
            padding: const EdgeInsets.all(6),
            child: ElevatedButton(
              onPressed: () {
                ref.read(betPresenter).onTapBetButton();
              },
              child: const Text('BET'),
            ),
          ),
        if ((uiState.dockSelectedCard == null) &&
            (uiState.dockSelectedBetLevel == null))
          SizedBox(width: dockW, height: dockH, child: null),
        Container(
          width: dockW,
          height: dockH,
          color: Colors.white.withOpacity(0.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var cardId in handCardIds)
                SizedBox(
                  width: dockH * 0.8,
                  height: dockH * 0.8,
                  child: SelectableBorderButton(
                    isSelected: uiState.dockSelectedCard == cardId,
                    onPressed: (() {
                      ref.read(putPresenter).onTapCard(cardId);
                    }),
                    child: PlayingCardImage(cardId),
                  ),
                ),
              for (var level in betLevels)
                SizedBox(
                  width: dockH * 0.8,
                  height: dockH * 0.8,
                  child: SelectableBorderButton(
                    isSelected: uiState.dockSelectedBetLevel == level,
                    onPressed: (() {
                      ref.read(betPresenter).onTapBetLevel(level);
                    }),
                    child: BetLevelImage(level),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
