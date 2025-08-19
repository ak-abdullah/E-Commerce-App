import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SubcategoriesShimmer extends StatelessWidget {
  const SubcategoriesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenUtil().screenWidth;

    final itemWidth = 56.47.r;
    final spacing = 9.41.w;
    final totalItemWidth = itemWidth + spacing;

    final itemCount = (screenWidth / totalItemWidth).ceil();

    return Container(
      margin: EdgeInsets.only(top: 4.h, bottom: 7.h, left: 21.w, right: 21.w),
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            itemCount,
            (index) => Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      child: Container(
                        width: 56.47.r,
                        height: 56.47.r,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      child: Container(
                        width: 40.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                    ),
                  ],
                ),
                if (index < itemCount - 1) SizedBox(width: spacing),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoriesShimmer extends StatelessWidget {
  const CategoriesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenUtil().screenWidth;

    final itemWidth = 80.w;
    final spacing = 10.w;
    final totalItemWidth = itemWidth + spacing;

    final itemCount = (screenWidth / totalItemWidth).ceil();

    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: Color(0xFFD9E4E8), width: 1.w),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 11.h),
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(itemCount, (index) {
            return Row(
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: Container(
                    height: 28.h,
                    width: itemWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.r),
                      color: Colors.white,
                    ),
                  ),
                ),
                if (index < itemCount - 1) SizedBox(width: spacing),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class ProductsShimmer extends StatelessWidget {
  const ProductsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = ScreenUtil().screenWidth;
    final cardWidth = 150.r;
    final spacing = 20.w;
    final totalCardWidth = cardWidth + spacing;
    final itemCount = (screenWidth / totalCardWidth).ceil();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _shimmerBox(width: 80.w, height: 16.h),
                SizedBox(width: 8.w),
                _shimmerBox(width: 30.w, height: 10.h),
              ],
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(itemCount, (index) {
                return Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.h),
                              child: _shimmerBox(
                                width: 150.r,
                                height: 150.r,
                                borderRadius: 5.r,
                              ),
                            ),

                            _shimmerBox(width: 100.w, height: 11.h),

                            SizedBox(height: 6.h),

                            Row(
                              children: [
                                _shimmerBox(width: 40.w, height: 13.h),
                                SizedBox(width: 7.w),
                                _shimmerBox(width: 40.w, height: 13.h),
                              ],
                            ),

                            Padding(
                              padding: EdgeInsets.only(
                                top: 9.8.h,
                                bottom: 11.55.h,
                              ),
                              child: _shimmerBox(
                                width: 125.w,
                                height: 12.64.h,
                                borderRadius: 5.r,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    if (index < itemCount - 1) SizedBox(width: spacing),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _shimmerBox({
    required double width,
    required double height,
    double borderRadius = 4,
  }) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
