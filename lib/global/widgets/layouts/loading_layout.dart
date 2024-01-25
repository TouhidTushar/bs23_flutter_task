import 'package:flutter/material.dart';
import 'package:bs23_flutter_task/global/utils/random_string_generator.dart';

class LoadingLayout extends StatelessWidget {
  LoadingLayout({super.key});

  final RandomStringGenerator _randomStringGenerator = RandomStringGenerator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: SizedBox.shrink(),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                _randomStringGenerator.generateLoadingText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
