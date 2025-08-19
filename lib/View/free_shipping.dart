import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FreeShipping extends StatelessWidget {
  const FreeShipping({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 21.w, right: 21.w, top: 10.h),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF17A2B8),
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 48.r,
              height: 48.r,
              decoration: BoxDecoration(
                color: Color(0xFFF0F6F8),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Image.asset('assets/shipping/delivery.png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Free Shipping Over \$0',
                    style: TextStyle(
                      letterSpacing: 0,
                      fontFamily: 'Montserrat',
                      fontSize: 15.sp,
                      color: Color(0xFFFFFFFF),
                      fontVariations: [FontVariation('wght', 600)],
                    ),
                  ),
                  Text(
                    'Free returns and exchange',
                    style: TextStyle(
                      letterSpacing: 0,
                      fontFamily: 'Montserrat',
                      fontSize: 12.sp,
                      color: Color(0xFFFFFFFF),
                      fontVariations: [FontVariation('wght', 500)],
                    ),
                  ),
                ],
              ),
            ),
            SvgPicture.asset('assets/shipping/Group 50.svg'),
          ],
        ),
      ),
    );
  }
}
