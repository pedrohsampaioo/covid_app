import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/app_svg_path.dart';
import '../../../core/theme/app_theme.dart';
import '../models/country_model.dart';

class SelectCountryWidget extends StatelessWidget {
  final Option<CountryModel> selectedCountry;
  final VoidCallback onTap;

  const SelectCountryWidget({
    Key key,
    @required this.selectedCountry,
    @required this.onTap,
  })  : assert(selectedCountry != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            selectedCountry.fold<Widget>(
              () => const SizedBox.shrink(),
              (country) => CircleAvatar(
                radius: 12,
                backgroundImage: NetworkImage(country.flagUrl),
                backgroundColor: AppColors.light05,
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                selectedCountry.fold<String>(
                  () => 'select country',
                  (country) => country.country.toUpperCase(),
                ),
                style: AppTypography.bodySmallBold.copyWith(
                  color: Colors.black,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 8),
            SvgPicture.asset(
              AppSvgPath.arrowBack,
            ),
          ],
        ),
      ),
    );
  }
}
