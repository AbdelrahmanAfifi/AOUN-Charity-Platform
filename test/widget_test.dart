import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:aoun/main.dart';

void main() {
  testWidgets('AOUN app starts at the login route', (tester) async {
    await tester.pumpWidget(const AounApp());

    final app = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(app.initialRoute, '/login');
    expect(app.routes?.keys, containsAll(['/login', '/donor', '/charity']));
  });
}
