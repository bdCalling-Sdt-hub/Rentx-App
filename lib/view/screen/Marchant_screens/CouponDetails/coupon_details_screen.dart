
import 'package:flutter/material.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/view/component/image/common_image.dart';

class CouponDetailsScreen extends StatelessWidget {
  const CouponDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
             CommonImage(imageSrc: AppImages.detailsCard)
          ],
        ),
      ),
    );
  }
}
