import 'package:casino_plus/casino_plus.dart';
import 'package:riverpod/riverpod.dart';

/// 構造
class GameRoomState {
  final String myUserId;
  final String hostUserId;
  final List<Player> players;

  const GameRoomState({
    required this.myUserId,
    required this.hostUserId,
    required this.players,
  });
}

/// バインド
class _Notifier extends StateNotifier<GameRoomState> {
  _Notifier(GameRoomState state) : super(state);
  update(GameRoomState state) {
    this.state = state;
  }
}

/// 公開
final gameRoomState = StateNotifierProvider<_Notifier, GameRoomState>((ref) {
  // 初期化
  const initialState = GameRoomState(
    myUserId: 'test',
    hostUserId: 'test',
    players: [],
  );
  return _Notifier(initialState);
});
