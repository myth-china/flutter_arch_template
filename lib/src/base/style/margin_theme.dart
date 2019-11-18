import 'package:flutter/material.dart';
import 'package:flutter_arch_template/src/base/resource/dimens.dart';

class MarginTheme {
  MarginTheme(BuildContext context);

  static SizedBox mgSs() {
    return SizedBox(
      height: dm_pd_ss,
      width: dm_pd_ss,
    );
  }

  static SizedBox mgXs() {
    return SizedBox(
      height: dm_pd_xs,
      width: dm_pd_xs,
    );
  }

  static SizedBox mgSm() {
    return SizedBox(
      height: dm_pd_sm,
      width: dm_pd_sm,
    );
  }

  static SizedBox mgNor() {
    return SizedBox(
      height: dm_pd_nor,
      width: dm_pd_nor,
    );
  }

  static SizedBox mgLg() {
    return SizedBox(
      height: dm_pd_lg,
      width: dm_pd_lg,
    );
  }
}
