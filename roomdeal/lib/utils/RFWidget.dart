import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:roomdeal/utils/RFColors.dart';

Widget rfCommonRichText(
    {String? title,
    String? subTitle,
    int? textSize,
    double? textHeight,
    Color? titleTextColor,
    Color? subtitleTextColor,
    TextStyle? titleTextStyle,
    TextStyle? subTitleTextStyle}) {
  return RichText(
      text: TextSpan(
          text: title.validate(),
          style: titleTextStyle ??
              primaryTextStyle(
                  size: textSize ?? 14,
                  height: textHeight ?? 0,
                  letterSpacing: 1.5),
          children: [
        TextSpan(
            text: subTitle.validate(),
            style: subTitleTextStyle ??
                primaryTextStyle(
                    color: subtitleTextColor ?? rf_primaryColor,
                    size: textSize ?? 14,
                    letterSpacing: 1.5))
      ]));
}
