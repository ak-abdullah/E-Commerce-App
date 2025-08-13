import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../Controllers/SubCategoriesController.dart';

class Subcategoriesui extends StatelessWidget {
  final SubCategoriesController controller = Get.put(SubCategoriesController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97.h,
      width: double.infinity,
      // color: Colors.blue,
      margin: EdgeInsets.only(top: 4.h, bottom: 7.h, left: 21.w, right: 21.w),
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder:
            (context, index) => Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.selectSubCategory(index);
                  },
                  child: Obx(
                    () => Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                          ),
                          child: Container(
                            width: 56.47.r,
                            height: 56.47.r,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.5.r,
                                color:
                                    controller.selectedIndex.value == index
                                        ? Color(0xFFB9202B)
                                        : Color(0xFF98A6AB),
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(controller.images[index]),
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
                                    controller.selectedIndex.value == index
                                        ? Color(0xFFB9202B)
                                        : Color(0xFFD9E4E8),
                                width: 1.w,
                              ),
                            ),
                            child: Text(
                              '${controller.counts[index]}',
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

                Text(
                  controller.subCategories[index],
                  style: TextStyle(
                    color: Color(0xFF89999F),
                    fontFamily: 'Montserrat',
                    fontSize: 11.sp,
                    fontVariations: [FontVariation('wght', 400)],
                  ),
                ),
              ],
            ),
        separatorBuilder: (context, index) => SizedBox(width: 9.41.w),
        itemCount: controller.subCategories.length,
      ),
    );
  }
}
