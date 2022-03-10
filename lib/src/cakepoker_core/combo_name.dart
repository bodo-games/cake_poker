import 'package:cake_poker/src/types/combo.dart';

String comboName({required Combo combo}) {
  switch (combo) {
    case Combo.start:
      return "--";
    case Combo.rsf:
      return "ロイヤルストレートフラッシュ";
    case Combo.sf:
      return "ストレートフラッシュ";
    case Combo.fullHouse:
      return "フルハウス";
    case Combo.flush:
      return "フラッシュ";
    case Combo.straight:
      return "ストレート";
    case Combo.twoPairs:
      return "ツーペア";
    case Combo.double:
      return "ダブル";
    case Combo.triple:
      return "トリプル";
    case Combo.miracle:
      return "ミラクル";
    case Combo.kingJoker:
      return "キングジョーカー";
    case Combo.numberPair:
      return "ナンバーペア";
    case Combo.suitPair:
      return "マークペア";
    case Combo.joker:
      return "ジョーカー";
    case Combo.noPairs:
      return "ノーペア";
  }
}
