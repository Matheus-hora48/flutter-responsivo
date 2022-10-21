import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: desktop ? 35 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(
                    'https://pps.whatsapp.net/v/t61.24694-24/310992554_819071212564318_7625843054353773491_n.jpg?ccb=11-4&oh=01_AdRn9y7cUKRAimgNHfDnM5cmtSJYjEF5hrGdS_8VeXi9ng&oe=635FFFB1',
                  ),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    'Luisfernand001',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Image.network(
            'https://pps.whatsapp.net/v/t61.24694-24/310992554_819071212564318_7625843054353773491_n.jpg?ccb=11-4&oh=01_AdRn9y7cUKRAimgNHfDnM5cmtSJYjEF5hrGdS_8VeXi9ng&oe=635FFFB1',
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.messenger_outline),
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Curtiod por luisfernand001 e outras 320 pessoas',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'HA 1 HORA',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          if (desktop) ...[
            Divider(
              color: Colors.white,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                        hintText: 'Adicione um comentário...',
                        hintStyle: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Publicar'),
                )
              ],
            )
          ]
        ],
      ),
    );
  }
}
