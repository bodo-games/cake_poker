import 'package:cake_poker/src/cakepoker_core/initial_record.dart';
import 'package:cake_poker/src/types/cakepoker_record.dart';
import 'package:riverpod/riverpod.dart';

/// バインド
class _Notifier extends StateNotifier<CakepokerRecord> {
  _Notifier(CakepokerRecord state) : super(state);
  update(CakepokerRecord state) {
    this.state = state;
  }
}

/// 公開
final cakepokerRecord =
    StateNotifierProvider<_Notifier, CakepokerRecord>((ref) {
  // 初期化
  return _Notifier(initialRecord);
});
