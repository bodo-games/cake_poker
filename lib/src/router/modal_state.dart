import 'package:cake_poker/src/router/modal_id.dart';
import 'package:riverpod/riverpod.dart';

class ModalState {
  final List<ModalId> queue;

  const ModalState({
    required this.queue,
  });
}

/// バインド
class Notifier extends StateNotifier<ModalState> {
  Notifier(ModalState state) : super(state);
  update(ModalState state) {
    this.state = state;
  }
}

/// 公開
final baseModalState = StateNotifierProvider<Notifier, ModalState>((ref) {
  // 初期化
  const initialState = ModalState(
    queue: [],
  );
  return Notifier(initialState);
});
