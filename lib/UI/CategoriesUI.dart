import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controllers/CategoriesController.dart';

class Categoriesui extends StatelessWidget {
  final CategoriesController controller = Get.find<CategoriesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: Color(0xFFD9E4E8), width: 1.w),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 11.h),
      width: double.infinity,

      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            controller.categories.length,

            (index) => Row(
              children: [
                Obx(
                  () => GestureDetector(
                    onTap: () {
                      controller.selectCategory(index);
                    },
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.r),
                            border: Border.all(
                              color:
                                  controller.selectedIndex.value == index
                                      ? Color(0xFFB9202B)
                                      : Color(0xFFD9E4E8),
                              width: 1.w,
                            ),
                          ),
                          height: 28.h,
                          child: Text(
                            controller.categories[index].name,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.sp,
                              color:
                                  controller.selectedIndex.value == index
                                      ? Color(0xFF000000)
                                      : Color(0xFF89999F),
                              // fontWeight:
                              //     controller.selectedIndex.value == index
                              //         ? FontWeight.w700
                              //         : FontWeight.w500,
                              fontVariations: [
                                controller.selectedIndex.value == index
                                    ? FontVariation('wght', 700)
                                    : FontVariation('wght', 500), // SemiBold
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -7.r,
                          right: -7.r,
                          child: Container(
                            alignment: Alignment.center,
                            height: 14.r,
                            width: 14.r,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color:
                                    controller.selectedIndex.value == index
                                        ? Color(0xFFB9202B)
                                        : Color(0xFFD9E4E8),
                                width: 1.w,
                              ),
                            ),
                            child: Text(
                              '${controller.categories[index].subCategory.fold(0, (sum, subCat) => sum + subCat.products.fold(0, (s, p) => s + p.quantity))}',

                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color:
                                    controller.selectedIndex.value == index
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
                if (index < controller.categories.length - 1)
                  SizedBox(width: 10.w),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
