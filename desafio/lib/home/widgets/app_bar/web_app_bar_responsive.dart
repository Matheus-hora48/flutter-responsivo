import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  const WebAppBarResponsiveContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 4,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Pesquise alguma coisa aqui',
                          isCollapsed: true,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (constraints.maxWidth >= 400) ...[
              const SizedBox(
                width: 32,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Aprender',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
            if (constraints.maxWidth >= 500) ...[
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Flutter',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 25,
              ),
            ]
          ],
        );
      },
    ));
  }
}
