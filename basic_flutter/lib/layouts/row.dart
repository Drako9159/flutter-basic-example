import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 86.0),
      child: SizedBox(
        // height: double.infinity,
        child: const Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Text('Hello World'),
            Spacer(),
            Expanded(child: Text('Hello World')),
            Text('Hello World'),
            Text('Hello World'),
            Text('Hello World'),
          ],
        ),
      ),
    );
  }
}
