import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class InformationCardWidget extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String amount;

  const InformationCardWidget({
    Key key,
    @required this.backgroundColor,
    @required this.title,
    @required this.amount,
  })  : assert(backgroundColor != null),
        assert(title != null),
        assert(amount != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: backgroundColor.withOpacity(0.7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTypography.bodySmallMedium.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              amount,
              style: AppTypography.bodyLargeBold.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
