import 'package:flutter/material.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/view/component/text/common_text.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key, this.isUse = false});

  final bool isUse;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                const CommonText(
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        text:
                            "Reward points added for paying rent through RentX card.")
                    .start,
                const CommonText(
                        textAlign: TextAlign.start,
                        fontSize: 12,
                        text: "22-July-2024")
                    .start,
                const CommonText(
                        textAlign: TextAlign.start,
                        fontSize: 12,
                        text: "TransactionID: #100875428")
                    .start,
              ],
            ),
          ),
          16.width,
          CommonText(
            text: "${isUse ? "-" : "+"}1200",
            color: isUse ? Colors.red : Colors.green,
          )
        ],
      ),
    );
  }
}
