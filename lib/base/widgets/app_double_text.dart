import 'package:flutter/material.dart';
import 'package:ticker_app/base/res/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleText({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle2,),
        InkWell(
          onTap:(){} ,
          child: Text(smallText, style: AppStyles.textStyle.copyWith(
            color: AppStyles.primaryColor,
          )),

        ),
      ],
    );
  }
}
