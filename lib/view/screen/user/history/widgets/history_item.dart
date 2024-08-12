import 'package:flutter/material.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/view/component/text/common_text.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key, this.isUse = false, this.text = "Reward points added for paying rent through RentX card.", this.horizontalPadding = 16});

  final bool isUse;
  final String text;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                CommonText(
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        text: text)
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
