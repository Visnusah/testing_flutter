import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// Import the custom screen to be tested
import 'package:testing_flutter_apps/screen/arithmetic.dart';

void main() {
  // Define a widget test to verify that the ArithmeticScreen has a specific title
  testWidgets('should have a title', (WidgetTester testter) async {
    // Build the widget tree using pumpWidget
    await testter.pumpWidget(
      const MaterialApp(
        home: ArithemticScreen(),
      ),
    );

    // Create a Finder to locate the widget containing the text 'Arithmetic Operations'
    Finder title = find.text('Arithmetic Operations');

    // Assert that the expected title widget exists exactly once in the widget tree
    expect(title, findsOneWidget);
  });
}
