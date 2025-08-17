import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/Controllers/ProductsController.dart';
import 'package:e_commerce_app/Controllers/SubCategoriesController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../Controllers/CategoriesController.dart';

class Productsui extends StatelessWidget {
  final ProductsController controller = Get.find<ProductsController>();
  final SubCategoriesController subCatController = Get.find<SubCategoriesController>();

  Productsui({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      child: Container(
        width: double.infinity,
        // color: Colors.blue.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    'Products ',
                    style: TextStyle(
                      color: Color(0xFF202020),
                      fontFamily: 'Montserrat',
                      fontSize: 16.sp,
                      fontVariations: [
                        FontVariation('wght', 700), // SemiBold
                      ],
                    ),
                  ),
                  Obx(() => Text(
                    '(${subCatController.subCategories[subCatController.selectedIndex.value].name})',
                    style: TextStyle(
                      color: Color(0xFFB9202B),
                      fontFamily: 'Montserrat',
                      fontSize: 7.sp,
                      fontVariations: [
                        FontVariation('wght', 700), // SemiBold
                      ],
                    ),
                  ),)
                ],
              ),
            ),
            Obx(
              () => SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(controller.products.length, (index) {
                    if (controller.products[index].status == true) {
                      return Row(
                        children: [
                          Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10.h),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          5.r,
                                        ),
                                      ),
                                      width: 150.r,
                                      height: 150.r,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          5.r,
                                        ),
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              controller.products[index].image,
                                          fit: BoxFit.cover,
                                          placeholder:
                                              (context, url) =>
                                                  Shimmer.fromColors(
                                                    baseColor:
                                                        Colors.grey[300]!,
                                                    highlightColor:
                                                        Colors.grey[100]!,
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
                                  Text(
                                    controller.products[index].name,
                                    style: TextStyle(
                                      color: Color(0xFF89999F),
                                      fontFamily: 'Montserrat',
                                      fontSize: 11.sp,
                                      fontVariations: [
                                        FontVariation('wght', 500), // SemiBold
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '\$${(controller.products[index].price).toStringAsFixed(2)}',
                                        style: TextStyle(
                                          decoration:
                                              controller
                                                          .products[index]
                                                          .discountPercentage !=
                                                      0
                                                  ? TextDecoration.lineThrough
                                                  : TextDecoration.none,
                                          decorationColor: Color(0xFF89999F),
                                          fontFamily: 'Montserrat',
                                          fontSize: 13.sp,
                                          color: Color(0xFF89999F),
                                          fontVariations: [
                                            FontVariation(
                                              'wght',
                                              500,
                                            ), // SemiBold
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 7.w),
                                      if (controller
                                              .products[index]
                                              .discountPercentage !=
                                          0)
                                        Text(
                                          '\$${((controller.products[index].price) - ((controller.products[index].price) * controller.products[index].discountPercentage / 100)).toStringAsFixed(2)}',
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 13.sp,
                                            color: Color(0xFFB9202B),
                                            fontVariations: [
                                              FontVariation(
                                                'wght',
                                                600,
                                              ), // SemiBold
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                  if (controller.products[index].quantity == 0)
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 9.8.h,
                                        bottom: 11.55.h,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            width: 146.65.w,
                                            height: 12.84.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                              color: Color(0xFFFFCD03),
                                            ),
                                          ),
                                          Container(
                                            width: 125.16.w,
                                            height: 12.64.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5.r),
                                              color: Color(0xFFFFC107),
                                            ),
                                            child: Text(
                                              'sold out',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: 9.sp,
                                                color: Color(0xFFB9202B),
                                                fontVariations: [
                                                  FontVariation(
                                                    'wght',
                                                    500,
                                                  ), // SemiBold
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                              if (controller
                                      .products[index]
                                      .discountPercentage !=
                                  0)
                                Positioned(
                                  top: 6.h,
                                  left: 6.w,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF28A745),
                                      borderRadius: BorderRadius.circular(2.r),
                                    ),
                                    // width: 40.w,
                                    // height: 18.h,
                                    child: Center(
                                      child: Text(
                                        '-${controller.products[index].discountPercentage}%',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 9.sp,
                                          color: Color(0xFFFFFFFF),
                                          fontVariations: [
                                            FontVariation(
                                              'wght',
                                              500,
                                            ), // SemiBold
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          if (index < controller.products.length - 1)
                            SizedBox(width: 20.w),
                        ],
                      );
                    } else {
                      return SizedBox.shrink();
                    }
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
