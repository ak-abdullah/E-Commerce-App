import 'package:e_commerce_app/UI/CategoriesUI.dart';
import 'package:e_commerce_app/UI/SubCategoriesUI.dart';
import 'package:e_commerce_app/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Column(children: [Categoriesui(), Subcategoriesui()]),
    );
  }
}
