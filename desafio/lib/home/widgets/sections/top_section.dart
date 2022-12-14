import 'package:desafio/breakpoints.dart';
import 'package:desafio/home/widgets/custom_search_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;

      if (maxWidth >= tabletBreakpoints) {
        return AspectRatio(
          aspectRatio: 3.2,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 3.4,
                child: Image.network(
                  'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 50,
                left: 50,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(26),
                    child: SizedBox(
                      width: 450,
                      child: Column(
                        children: const [
                          Text(
                            'Aprenda flutter com este curso',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec magna quam, porttitor quis massa commodo, interdum maximus leo.',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      if (maxWidth >= mobileBreakpoints) {
        return SizedBox(
          height: 320,
          child: Stack(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(26),
                    child: SizedBox(
                      width: 350,
                      child: Column(
                        children: const [
                          Text(
                            'Aprenda flutter com este curso',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec magna quam, porttitor quis massa commodo, interdum maximus leo.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          CustomSearchField(),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      return Column(
        children: [
          AspectRatio(
            aspectRatio: 3.2,
            child: Image.network(
              'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Aprenda flutter com este curso',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec magna quam, porttitor quis massa commodo, interdum maximus leo.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  CustomSearchField(),
                ]),
          )
        ],
      );
    });
  }
}
