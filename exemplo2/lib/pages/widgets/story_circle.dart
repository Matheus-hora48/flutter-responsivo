import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 78,
          width: 78,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.red.shade400,
                Colors.pink.shade400,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black87,
            ),
            alignment: Alignment.center,
            child: const CircleAvatar(
              radius: 32,
              backgroundImage: NetworkImage(
                'https://pps.whatsapp.net/v/t61.24694-24/310992554_819071212564318_7625843054353773491_n.jpg?ccb=11-4&oh=01_AdRn9y7cUKRAimgNHfDnM5cmtSJYjEF5hrGdS_8VeXi9ng&oe=635FFFB1',
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Luis Fernando',
          style: TextStyle(fontSize: 12, color: Colors.white),
        )
      ],
    );
  }
}
