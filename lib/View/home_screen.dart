import 'package:e_commerce_app/Utils/app_bar.dart';
import 'package:e_commerce_app/Utils/shimmer_effect.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/homepage_controller.dart';
import 'categories.dart';
import 'free_shipping.dart';
import 'products.dart';
import 'sub_categories.dart';

class HomeScreen extends StatelessWidget {
  final HomePageController controller = Get.put(HomePageController());

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Obx(() {
        if (controller.isLoading.value) {
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
              Categories(),
              SubCategories(),
              Products(),
              FreeShipping(),
            ],
          );
        }
      }),
    );
  }
}
