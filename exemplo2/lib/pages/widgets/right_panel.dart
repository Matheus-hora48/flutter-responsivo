import 'package:exemplo2/pages/widgets/responsive_app_bar.dart';
import 'package:exemplo2/pages/widgets/suggestion_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: const [
        Condition.largerThan(name: TABLET),
      ],
      child: Container(
        margin: const EdgeInsets.fromLTRB(35, 56, 20, 0),
        width: 300,
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 29,
                  backgroundImage: NetworkImage(
                      'https://pps.whatsapp.net/v/t61.24694-24/310992554_819071212564318_7625843054353773491_n.jpg?ccb=11-4&oh=01_AdRn9y7cUKRAimgNHfDnM5cmtSJYjEF5hrGdS_8VeXi9ng&oe=635FFFB1'),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Luisfernand001',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Luis Fernando',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Sair',
                      style: TextStyle(
                        color: Color(0xFF0396F6),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Sugestões para você',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.grey,
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Ver tudo',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const SuggestionItem(),
            const SuggestionItem(),
            const SuggestionItem(),
          ],
        ),
      ),
    );
  }
}
