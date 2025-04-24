import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          ElevatedButton(onPressed: null, child: Text('Elevated Button')),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: null,
            child: Text('Elevated Button', style: TextStyle(color: Colors.red)),
          ),
          ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Color.fromARGB(255, 54, 244, 197),
              ),
            ),
            child: Text('Elevated Button'),
          ),
          SizedBox(height: 20),
          OutlinedButton(onPressed: null, child: Text('Outlined Button')),
          SizedBox(height: 20),
          TextButton(onPressed: null, child: Text('Text Button')),
          SizedBox(height: 20),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.add),
            tooltip: 'Add',
            color: Colors.red,
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            onPressed: null,
            backgroundColor: Colors.red,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
