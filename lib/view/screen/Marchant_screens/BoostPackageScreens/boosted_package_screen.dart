import 'package:flutter/material.dart';
import 'package:rentx/view/component/text/common_text.dart';

class BoostedPackageScreen extends StatelessWidget {
  const BoostedPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText(text: "Boosted Package Screen"),
      ),
    );
  }
}
