import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 41.h,
        left: 20.w,
        right: 20.w,
        bottom: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/app_bar/hamburger.svg',
            width: 37.w,
            height: 37.h,
          ),
          SvgPicture.asset(
            'assets/app_bar/shop_logo.svg',
            width: 130.75.w,
            height: 30.08.h,
          ),
          SvgPicture.asset(
            'assets/app_bar/search.svg',
            width: 37.w,
            height: 37.h,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(12.h + 37.h + 12.h);
}
