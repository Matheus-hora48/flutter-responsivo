import 'package:desafio/breakpoints.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildHorizontalAdvantage(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.white,
            ),
          )
        ],
      );
    }

    Widget buildVerticalAdvantage(String title, String subtitle) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.star,
            color: Colors.white,
            size: 50,
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      );
    }

    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= mobileBreakpoints) {
          return Container(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 16,
              spacing: 8,
              children: [
                buildHorizontalAdvantage(
                    '+45.000 alunos', 'Didática garantina'),
                buildHorizontalAdvantage(
                    '+45.000 alunos', 'Didática garantina'),
                buildHorizontalAdvantage(
                    '+45.000 alunos', 'Didática garantina'),
              ],
            ),
          );
        }
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: buildVerticalAdvantage(
                  '+45.000 alunos',
                  'Didática garantina',
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Expanded(
                child: buildVerticalAdvantage(
                  '+45.000 alunos',
                  'Didática garantina',
                ),
              ),
              const SizedBox(
                width: 4,
              ),  
              Expanded(
                child: buildVerticalAdvantage(
                  '+45.000 alunos',
                  'Didática garantina',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
