import 'package:flutter/cupertino.dart';

class FxSimpleBreadButton extends StatelessWidget {
  final String text;
  final Widget? suffix;
  final bool isFirstButton;
  final Color? color;

  const FxSimpleBreadButton(
      this.text, this.suffix, this.isFirstButton,
      {Key? key, this.color,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 12,
          ),
        ),
        suffix ??
            Text(
              " / ",
              style: TextStyle(
                color: color,
                fontSize: 12,
              ),
            )
      ],
    );
  }
}
