import 'package:cake_poker/src/components/url_image.dart';
import 'package:cake_poker/src/config/image_names.dart';
import 'package:cake_poker/src/types/bet_level.dart';
import 'package:flutter/material.dart';

class BetLevelImage extends StatelessWidget {
  final BetLevel level;
  const BetLevelImage(this.level);
  @override
  Widget build(BuildContext context) {
    final imageName = _imageName(level);
    return UrlImage.assetsName(imageName);
  }
}

String _imageName(BetLevel level) {
  switch (level) {
    case BetLevel.min:
      return ImageNames.chip3;
    case BetLevel.mid:
      return ImageNames.chip5;
    case BetLevel.max:
      return ImageNames.chip7;
  }
}
