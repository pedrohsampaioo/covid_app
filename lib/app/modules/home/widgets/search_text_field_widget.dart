import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/app_svg_path.dart';
import '../../../core/theme/app_theme.dart';

class SearchTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;

  const SearchTextFieldWidget({
    Key key,
    @required this.controller,
  })  : assert(controller != null),
        super(key: key);
        
  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: controller,
      style: AppTypography.bodyBold.copyWith(
        color: Colors.black,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      placeholder: 'Search country',
      cursorColor: AppColors.darkPurple,
      placeholderStyle: AppTypography.bodySemiBold.copyWith(
        color: AppColors.light05,
      ),
      decoration: BoxDecoration(
        color: AppColors.light02,
        borderRadius: BorderRadius.circular(4),
      ),
      suffix: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          AppSvgPath.search,
          color: AppColors.darkPurple,
          height: 16,
          width: 16,
        ),
      ),
    );
  }
}
