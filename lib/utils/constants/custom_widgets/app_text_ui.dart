import 'package:flutter/material.dart';
import 'package:note_sticker/utils/constants/app_constants.dart';

class AppTextUi extends StatelessWidget {
  const AppTextUi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:  const TextSpan(
        text: AppConstants.appTitleFirstName,
        style:AppConstants.appTitleFirstPartTextStyle,
        children:  <TextSpan>[
          TextSpan(
            text: AppConstants.appTitleSecondName,
            style: AppConstants.appTitleSecondPartTextStyle,
          ),
        ],
      ),
    );
  }
}