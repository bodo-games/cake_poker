//
// ページIDと画面UIの紐付け
//

import 'package:cake_poker/src/pages/cakepoker_play/cakepoker_play.dart';
import 'package:cake_poker/src/pages/cakepoker_score/cakepoker_score.dart';
import 'package:cake_poker/src/pages/loading/loading.dart';
import 'package:cake_poker/src/router/page_id.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PageContent extends HookConsumerWidget {
  final PageId id;
  const PageContent({
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (id) {
      case PageId.loading:
        return Loading();
      case PageId.cakepokerPlay:
        return CakepokerPlay();
      case PageId.cakepokerScore:
        return CakepokerScore();
    }
  }
}
