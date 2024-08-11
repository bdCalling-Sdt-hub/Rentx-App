import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/text/common_text.dart';

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  int indexNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: List.generate(
            5,
            (index) {
              return Container(
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Stack(
                  children: [
                    CommonImage(
                      imageSrc: AppImages.point,
                      height: 280,
                      width: 600,
                      imageType: ImageType.png,
                      fill: BoxFit.fill,
                    ),
                    const Positioned(
                      bottom: 8,
                      left: 10,
                      right: 8,
                      child: CommonText(
                        maxLines: 2,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        text: AppString
                            .getRewardPointsByGivingYourRentsUsingRentX,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          options: CarouselOptions(
            height: 280,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 3),
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              indexNumber = index;
              setState(() {});
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) {
            return Container(
              width: 8.0,
              height: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    Colors.white.withOpacity(index == indexNumber ? 0.9 : 0.4),
              ),
            );
          }),
        ),
      ],
    );
  }
}
