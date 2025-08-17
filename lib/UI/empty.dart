import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Empty extends StatefulWidget {
  const Empty({super.key});

  @override
  State<Empty> createState() => _EmptyState();
}

class _EmptyState extends State<Empty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          height: 200,
          width: 200,
          child: SvgPicture.asset(
            'assets/shipping/Bike.svg',
            fit: BoxFit.contain,
            height: 40,
            width: 40,
          ),
        ),
      ),
    );
  }
}
