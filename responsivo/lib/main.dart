import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ClassMediaQuery(),
    );
  }
}

class ClassExpande extends StatelessWidget {
  const ClassExpande({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //o expande serve pra expandir um widget ate o maximo da tela
      body: Expanded(
        child: Container(
          //Sempre usar o flex para manter a responsividade
          color: Colors.red,
        ),
      ),
    );
  }
}

class ClassMediaQuery extends StatelessWidget {
  const ClassMediaQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //uma maneira de deixar responsivo
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.red,
      ),
    );
  }
}
