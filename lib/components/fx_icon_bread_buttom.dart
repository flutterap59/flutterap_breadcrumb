import 'package:flutter/cupertino.dart';

import 'package:intl/intl.dart' as intl;


class FxIconBreadButton extends StatelessWidget {
  final String text;
  final Widget? ltrSuffix;
  final Widget? rtlSuffix;
  final bool isFirstButton;

  const FxIconBreadButton(
    this.text,
    this.isFirstButton, {
    Key? key,
    this.ltrSuffix,
    this.rtlSuffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDirectionRTL(BuildContext context) {
      return intl.Bidi.isRtlLanguage(
          Localizations.localeOf(context).languageCode);
    }

    bool rtl = isDirectionRTL(context);
    return Row(
      children: [
        Text(
          text,
        ),
        rtl
            ? rtlSuffix ??
                const Text(
                  " / ",
                )
            : ltrSuffix ??
                const Text(
                  " / ",
                )
      ],
    );
  }
}
