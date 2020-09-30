import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class LabelCountryWidget extends StatelessWidget {
  final String flagUrl;
  final String name;
  final VoidCallback onTap;

  const LabelCountryWidget({
    Key key,
    @required this.flagUrl,
    @required this.name,
    @required this.onTap,
  })  : assert(flagUrl != null),
        assert(name != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            flagUrl,
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 8),
          Text(
            name,
            textAlign: TextAlign.start,
            style: AppTypography.bodySmallSemiBold.copyWith(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
