//
//
//

import 'package:cake_poker/src/types/game_message.dart';
import 'package:riverpod/riverpod.dart';

class WillReloadRecordReceiver {
  final Reader read;
  WillReloadRecordReceiver(this.read);

  onReceiveWillReloadRecord(GameMessage message) async {}
}
