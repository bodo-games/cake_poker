//
//
//

import 'package:cake_poker/src/state/cakepoker_record.dart';
import 'package:cake_poker/src/state/cakepoker_ui_state.dart';
import 'package:cake_poker/src/types/seat.dart';
import 'package:cake_poker/src/types/side.dart';
import 'package:casino_plus/casino_plus.dart';
import 'package:riverpod/riverpod.dart';

class ShowdownPresenter {
  final Reader _read;
  ShowdownPresenter(this._read);

  showdown() async {
    final record = _read(cakepokerRecord);
    record.sides.sort((s0, s1) => s0.seat.rawValue.compareTo(s1.seat.rawValue));
    for (var side in record.sides) {
      await showdownForSide(side);
    }
  }

  showdownForSide(Side side) async {
    // カードをめくる
    await openPutCardForSide(side);

    var rotateInner = false;
    var rotateOuter = false;
    var card = side.putCardId!;
    switch (card.number) {
      case Number.num11:
        rotateInner = true;
        break;
      case Number.num12:
        rotateOuter = true;
        break;
      case Number.num13:
        rotateInner = true;
        rotateOuter = true;
        break;
      default:
        break;
    }

    final oldUiState = _read(cakepokerUiState);
    var innerDegree = oldUiState.innerCakeDegree;
    var outerDegree = oldUiState.outerCakeDegree;
    if (rotateInner) {
      // rotate
      innerDegree += 90;
    }
    if (rotateOuter) {
      // rotate
      outerDegree += 90;
    }
    if (rotateInner || rotateOuter) {
      final newUiState = oldUiState.copyWith(
        innerCakeDegree: innerDegree,
        outerCakeDegree: outerDegree,
      );
      _read(cakepokerUiState.notifier).update(newUiState);
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  openPutCardForSide(Side side) async {
    final oldUiState = _read(cakepokerUiState);
    final oldSideUiState =
        oldUiState.uiSides.firstWhere((uiSide) => uiSide.seat == side.seat);
    final newSideUiState = oldSideUiState.copyWith(
      putCardId: side.putCardId,
      putCardDegree: 0,
    );
    var newUiSides = List.of(oldUiState.uiSides);
    newUiSides.removeWhere((uiSide) => uiSide.seat == side.seat);
    newUiSides.add(newSideUiState);
    final newUiState = oldUiState.copyWith(uiSides: newUiSides);
    _read(cakepokerUiState.notifier).update(newUiState);
    await Future.delayed(const Duration(seconds: 1));
  }
}

final showdownPresenter = Provider((ref) => ShowdownPresenter(ref.read));
