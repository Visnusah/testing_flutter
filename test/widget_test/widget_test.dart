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

// Test case to verify the addition functionality of two numbers in the ArithmeticScreen

group('add and sub widget test', (){
  testWidgets('add two numbers', (tester) async {
  // Build the ArithmeticScreen widget within a MaterialApp environment
  await tester.pumpWidget(
    const MaterialApp(
      home: ArithemticScreen(),
    )
  );

  // Enter '5' into the first TextField found in the widget tree
  await tester.enterText(find.byType(TextField).first, '5');

  // Enter '3' into the last TextField found in the widget tree
  await tester.enterText(find.byType(TextField).last, '3');

  // Tap the 'Add' button to trigger the calculation logic
  // (Optional alternative: find button by index if text is not unique)
  // await tester.tap(find.byType(ElevatedButton).at(0));
  await tester.tap(find.widgetWithText(ElevatedButton, 'Add'));

  // Wait for all animations and scheduled tasks to complete
  await tester.pumpAndSettle();

  // Verify that the UI displays the correct result "Result : 8"
  expect(find.text("Result : 8"), findsOneWidget);
});
testWidgets('Sub two numbers', (tester) async {
  // Build the ArithmeticScreen widget within a MaterialApp environment
  await tester.pumpWidget(
    const MaterialApp(
      home: ArithemticScreen(),
    )
  );

  // Enter '5' into the first TextField found in the widget tree
  await tester.enterText(find.byType(TextField).at(0), '5');

  // Enter '3' into the last TextField found in the widget tree
  await tester.enterText(find.byType(TextField).at(1), '3');

  // Tap the 'Add' button to trigger the calculation logic
  // (Optional alternative: find button by index if text is not unique)
  // await tester.tap(find.byType(ElevatedButton).at(0));
  await tester.tap(find.byType(ElevatedButton).at(1));

  // Wait for all animations and scheduled tasks to complete
  await tester.pumpAndSettle();

  // Verify that the UI displays the correct result "Result : 8"
  expect(find.text("Result : 2"), findsOneWidget);
});
});

testWidgets('Add two numbers', (tester) async {
  // check two UI in once 
  // intrgration test 
  await tester.pumpWidget(
    const MaterialApp(
      home: ArithemticScreen(),
    )
  );
  await tester.enterText(find.byType(TextField).at(0), '5');
  await tester.enterText(find.byType(TextField).at(1), '3');
  await tester.tap(find.byType(ElevatedButton).at(0));

  await tester.pumpAndSettle();
  expect(find.text("Results : 8"), findsOneWidget);
});

}