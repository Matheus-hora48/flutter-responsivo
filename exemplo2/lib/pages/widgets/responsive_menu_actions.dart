import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuAction extends StatelessWidget {
  const ResponsiveMenuAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: const [
            Condition.smallerThan(name: TABLET),
          ],
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
        const SizedBox(width: 4),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
        const SizedBox(width: 16),
        const CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
            'https://pps.whatsapp.net/v/t61.24694-24/310992554_819071212564318_7625843054353773491_n.jpg?ccb=11-4&oh=01_AdRn9y7cUKRAimgNHfDnM5cmtSJYjEF5hrGdS_8VeXi9ng&oe=635FFFB1',
          ),
        ),
      ],
    );
  }
}
