
import 'package:flutter/material.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/text/common_text.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CommonText(text: AppString.aboutMe, fontWeight: FontWeight.w700, fontSize: 20),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            CommonText(
              textAlign: TextAlign.justify,
              maxLines: 10,
                text: "Lorem ipsum dolor sit amet consectetur. Felis aliquam arcu pretium enim scelerisque adipiscing viverra sed. Malesuada quam massa mi hendrerit pulvinar a tortor nec. In dictumst suspendisse est dui dignissim risus lectus bibendum arcu. Condimentum nibh varius elementum convallis.")
          ],
        ),
      ),
    );
  }
}
