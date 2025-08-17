import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import '../Controllers/SubCategoriesController.dart';

class Subcategoriesui extends StatelessWidget {
  final SubCategoriesController controller =
      Get.find<SubCategoriesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      margin: EdgeInsets.only(top: 4.h, bottom: 7.h, left: 21.w, right: 21.w),
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Obx(
        () => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            children: List.generate(
              controller.subCategories.length,

              (index) => Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => GestureDetector(
                          onTap: () {
                            controller.selectSubCategory(index);
                          },
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  // border: Border.all(color: Colors.black),
                                ),
                                child: Container(
                                  width: 56.47.r,
                                  height: 56.47.r,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5.r,
                                      color:
                                          controller.selectedIndex.value ==
                                                  index
                                              ? Color(0xFFB9202B)
                                              : Color(0xFF98A6AB),
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipOval(
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          controller.subCategories[index].image,
                                      placeholder:
                                          (context, url) => Shimmer.fromColors(
                                            baseColor: Colors.grey[300]!,
                                            highlightColor: Colors.grey[100]!,
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              color: Colors.white,
                                            ),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 14.r,
                                  width: 14.r,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color:
                                          controller.selectedIndex.value ==
                                                  index
                                              ? Color(0xFFB9202B)
                                              : Color(0xFFD9E4E8),
                                      width: 1.w,
                                    ),
                                  ),
                                  child: Text(
                                    '${controller.subCategories[index].products.fold(0, (sum, product) => sum + product.quantity)}',

                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color:
                                          controller.selectedIndex.value ==
                                                  index
                                              ? Color(0xFF000000)
                                              : Color(0xFF89999F),
                                      fontVariations: [
                                        FontVariation('wght', 600), // SemiBold
                                      ],
                                      fontSize: 5.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Text(
                        controller.subCategories[index].name,
                        style: TextStyle(
                          color: Color(0xFF89999F),
                          fontFamily: 'Montserrat',
                          fontSize: 11.sp,
                          fontVariations: [FontVariation('wght', 400)],
                        ),
                      ),
                    ],
                  ),
                  if (index < controller.subCategories.length - 1)
                    SizedBox(width: 9.41.w),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
