import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/app_svg_path.dart';
import '../../../core/theme/app_theme.dart';

class CountryNotSelectedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            AppSvgPath.planet,
            color: Colors.white,
            width: 48,
            height: 48,
          ),
          const SizedBox(height: 32),
          Text(
            'No country was selected',
            textAlign: TextAlign.center,
            style: AppTypography.bodySemiBold.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
