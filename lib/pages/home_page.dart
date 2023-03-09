import 'package:english_app/values/app_assets.dart';
import 'package:english_app/values/app_colors.dart';
import 'package:english_app/values/app_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double heightOfTitle = size.height * 1 / 10;
    final double heightSizeBoxPageView = size.height * 2 / 3;
    return Scaffold(
      backgroundColor: AppColors.secondColor,
      appBar: AppBar(
        backgroundColor: AppColors.secondColor,
        elevation: 0, // <-- remove line
        title: Text(
          'English Today',
          style:
              AppStyles.h4.copyWith(color: AppColors.textColor, fontSize: 36),
        ),
        leading: GestureDetector(
          child: Image.asset(AppAssets.menu),
          onTap: () {},
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.centerLeft,
            height: heightOfTitle,
            child: Text(
              '“It is amazing how complete is the delusion that beauty is goodness.”',
              style: AppStyles.h5.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textColor),
            ),
          ),
          SizedBox(
            height: heightSizeBoxPageView,
            child: PageView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: AppColors.primaryColor,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            child: Image.asset(AppAssets.heart),
                          ),
                          RichText(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                  text: 'B',
                                  style: AppStyles.h1.copyWith(
                                      fontSize: 89,
                                      fontWeight: FontWeight.w700,
                                      shadows: const [
                                        BoxShadow(
                                            blurRadius: 6,
                                            color: Colors.black38,
                                            offset: Offset(3, 6)),
                                      ]),
                                  children: [
                                    TextSpan(
                                        text: 'eautiful',
                                        style: AppStyles.h1.copyWith(
                                            fontSize: 56,
                                            fontWeight: FontWeight.w700,
                                            shadows: const [
                                              BoxShadow(
                                                  blurRadius: 6,
                                                  color: Colors.black38,
                                                  offset: Offset(1, 2)),
                                            ]))
                                  ])),
                          const Text(
                            '“Think of all the beauty still left around you and be happy.”',
                            style: TextStyle(
                                fontFamily: FontFamily.sen,
                                fontSize: 28,
                                fontWeight: FontWeight.w400),
                          ),
                        ]),
                  );
                }),
          ),
          // indicator
          SizedBox(
            height: size.height * 1 / 10,
            child: ListView.builder(itemBuilder: (context, index) {
              return _indicatorWidget(index == 0, size);
            }),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        child: Image.asset(AppAssets.exchange),
        onPressed: () {},
      ),
    );
  }
}

Widget _indicatorWidget(bool isActive, Size size) {
  return Container(
    width: isActive ? size.width * 1 / 5 : 24,
    decoration: BoxDecoration(
        color: isActive ? AppColors.lightBlue : AppColors.lightGrey,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: const [
          BoxShadow(color: Colors.black38, offset: Offset(2, 3), blurRadius: 3),
        ]),
  );
}
