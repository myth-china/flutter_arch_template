import 'package:flutter/material.dart';
import 'package:flutter_arch_template/src/base/resource/dimens.dart';

MarginTheme getMarginTheme(BuildContext context) {
  return MarginTheme(context);
}

class MarginTheme {
  MarginTheme(BuildContext context);

  SizedBox mgSs() {
    return SizedBox(
      height: dm_pd_ss,
      width: dm_pd_ss,
    );
  }

  SizedBox mgXs() {
    return SizedBox(
      height: dm_pd_xs,
      width: dm_pd_xs,
    );
  }

  SizedBox mgSm() {
    return SizedBox(
      height: dm_pd_sm,
      width: dm_pd_sm,
    );
  }

  SizedBox mgNor() {
    return SizedBox(
      height: dm_pd_nor,
      width: dm_pd_nor,
    );
  }

  SizedBox mgLg() {
    return SizedBox(
      height: dm_pd_lg,
      width: dm_pd_lg,
    );
  }
}
