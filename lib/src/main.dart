import 'package:cake_poker/src/components/url_image.dart' as local;
import 'package:cake_poker/src/pages/cakepoker_page/cakepoker_page.dart';
import 'package:flutter/material.dart';

void main() {
  final app = CakepokerApp();
  runApp(app);
}

/// 呼び出し側に見立てたテスト用のアプリ
class CakepokerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    local.UrlImage.localMode = true;
    final page = CakepokerPage(onGamePageClose: () {
      debugPrint('親アプリへ戻ります テストでは何も行いません');
    });
    final app = MaterialApp(home: page);
    return app;
  }
}
