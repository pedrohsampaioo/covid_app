import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String title;
  final Color titleColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const PrimaryButtonWidget({
    Key key,
    @required this.title,
    this.backgroundColor = Colors.white,
    this.titleColor = Colors.black,
    @required this.onPressed,
  })  : assert(title != null),
        assert(backgroundColor != null),
        assert(titleColor != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      color: backgroundColor,
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      elevation: 0,
      child: Text(
        title,
        style: AppTypography.bodyLargeSemiBold.copyWith(
          color: titleColor,
        ),
      ),
    );
  }
}
