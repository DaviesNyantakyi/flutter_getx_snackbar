import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.snackbar(
                'This is a snackbar title',
                'This is a snackbar message',
                backgroundColor: Colors.blueGrey,
                snackPosition: SnackPosition.BOTTOM,
                margin: const EdgeInsets.all(16),
                titleText: const Text(
                  'Overriden title',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                messageText: const Text(
                  'Overriden Message text',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              );
            },
            child: const Text('Show Snackbar'),
          ),
        ),
      ),
    );
  }
}
