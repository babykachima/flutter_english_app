import 'package:english_app/pages/home_page.dart';
import 'package:english_app/values/app_assets.dart';
import 'package:english_app/values/app_colors.dart';
import 'package:english_app/values/app_styles.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          Expanded(
              child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Welcome to',
              style: AppStyles.h3,
            ),
          )),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'English',
                style: AppStyles.h2.copyWith(
                    fontWeight: FontWeight.w700, color: AppColors.blackGrey),
              ),
              Text(
                'Qoutes"',
                textAlign: TextAlign.right,
                style: AppStyles.h4
                    .copyWith(fontWeight: FontWeight.w400, height: 0.5),
              )
            ],
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 64),
              child: RawMaterialButton(
                fillColor: AppColors.lightBlue,
                shape: const CircleBorder(),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const HomePage()),
                      (route) => false);
                },
                child: Image.asset(AppAssets.rightArrow),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
