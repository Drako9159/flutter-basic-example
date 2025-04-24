import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Text('Hello World'),
        Spacer(),
        Text('Hello World', textAlign: TextAlign.center),
        Text('Hello World', textDirection: TextDirection.ltr),
        Text('Hello World', style: TextStyle(color: Colors.red)),
        Text('Hello World', style: TextStyle(fontSize: 20)),
        Text('Hello World', style: TextStyle(fontWeight: FontWeight.bold)),
        Text('Hello World', style: TextStyle(fontStyle: FontStyle.italic)),
        Text('Hello World', style: TextStyle(letterSpacing: 2)),
        Text(
          'Hello World',
          style: TextStyle(
            wordSpacing: 2,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.red,
          ),
        ),
        Spacer(),
        Text(
          "Text large lorem ipsum dolor sit amet, consectetur lk lkjsd jdslakd lskdl kdasd dsdas ",
          style: TextStyle(fontSize: 30),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
      ],
    );
  }
}
