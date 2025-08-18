import 'package:e_commerce_app/UI/categories_ui.dart';
import 'package:e_commerce_app/UI/free_shipping_ui.dart';
import 'package:e_commerce_app/UI/products_ui.dart';
import 'package:e_commerce_app/UI/sub_categories_ui.dart';
import 'package:e_commerce_app/app_bar.dart';
import 'package:e_commerce_app/shimmer_effect.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controllers/homepage_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomepageController controller = Get.put(HomepageController());

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Obx(() {
        if (controller.isLoading.value) {
          // return Center(
          //   child: CircularProgressIndicator(color: Color(0xFFB9202B)),
          // );
          return Column(
            children: [
              CategoriesShimmer(),
              SubcategoriesShimmer(),
              ProductsShimmer(),
            ],
          );
        } else {
          return Column(
            children: [
              CategoriesUi(),
              SubCategoriesUi(),
              ProductsUi(),
              FreeShippingUi(),
            ],
          );
        }
      }),
    );
  }
}
