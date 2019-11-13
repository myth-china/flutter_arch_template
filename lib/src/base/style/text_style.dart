import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_arch_template/src/base/resource/colors.dart';
import 'package:flutter_arch_template/src/base/resource/dimens.dart';

const double internalLetterSpacing = 1.0;

get fontBold {
  if (Platform.isAndroid) {
    return FontWeight.w600;
  }
  return FontWeight.w600;
}

TextStyle textStyleTitle() {
  return TextStyle(
    fontSize: dm_text_xxl,
    fontWeight: fontBold,
    color: cl_black,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleTitle0() {
  return TextStyle(
    fontSize: dm_text_lg,
    fontWeight: fontBold,
    color: cl_black,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleTitle1() {
  return TextStyle(
    fontSize: dm_text_nor,
    fontWeight: fontBold,
    color: cl_black,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleTitle2() {
  return TextStyle(
    fontSize: dm_text_sm,
    fontWeight: fontBold,
    color: cl_black,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleTitle2Red() {
  return TextStyle(
    fontSize: dm_text_sm,
    fontWeight: fontBold,
    color: cl_red,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleNor() {
  return TextStyle(
    fontSize: dm_text_nor,
    color: cl_black,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleNorBold() {
  return TextStyle(
    fontSize: dm_text_nor,
    color: cl_black,
    fontWeight: fontBold,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleNorGrey() {
  return TextStyle(
    fontSize: dm_text_nor,
    color: cl_grey,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleSm({height}) {
  return TextStyle(
    fontSize: dm_text_sm,
    color: cl_black,
    height: height,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleSmBold() {
  return TextStyle(
    fontSize: dm_text_sm,
    fontWeight: fontBold,
    color: cl_black,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleSmGrey() {
  return TextStyle(
    fontSize: dm_text_sm,
    color: cl_grey,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleSmRed({height}) {
  return TextStyle(
    fontSize: dm_text_sm,
    color: cl_red,
    height: height,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleSmRedBold() {
  return TextStyle(
    fontSize: dm_text_sm,
    color: cl_red,
    fontWeight: fontBold,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleXs() {
  return TextStyle(
    fontSize: dm_text_xs,
    color: cl_black,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleXsGrey() {
  return TextStyle(
    fontSize: dm_text_xs,
    color: cl_black,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleXsRed() {
  return TextStyle(
    fontSize: dm_text_xs,
    color: cl_red,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleXxs() {
  return TextStyle(
    fontSize: dm_text_xxs,
    color: cl_black,
    letterSpacing: internalLetterSpacing,
  );
}

TextStyle textStyleXxsGrey() {
  return TextStyle(
    fontSize: dm_text_xxs,
    color: cl_black,
    letterSpacing: internalLetterSpacing,
  );
}
