import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/app_svg_path.dart';
import '../../../core/theme/app_theme.dart';
import 'primary_button_widget.dart';

class ErrorTemplateWidget extends StatelessWidget {
  final Future<void> Function() refreshAction;
  final Color iconColor;
  final Color textColor;
  final Color buttonBackgroundColor;
  final Color buttonTextColor;

  final String message;

  const ErrorTemplateWidget({
    Key key,
    @required this.refreshAction,
    @required this.iconColor,
    @required this.textColor,
    @required this.buttonTextColor,
    @required this.buttonBackgroundColor,
    @required this.message,
  })  : assert(refreshAction != null),
        assert(iconColor != null),
        assert(textColor != null),
        assert(buttonBackgroundColor != null),
        assert(buttonTextColor != null),
        assert(message != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 16),
          SvgPicture.asset(
            AppSvgPath.warning,
            color: iconColor,
            width: 64,
            height: 64,
          ),
          const SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
            style: AppTypography.bodySmallSemiBold.copyWith(
              color: textColor,
            ),
          ),
          const SizedBox(height: 16),
          PrimaryButtonWidget(
            title: 'Retry',
            onPressed: refreshAction,
            backgroundColor: buttonBackgroundColor,
            titleColor: buttonTextColor,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
