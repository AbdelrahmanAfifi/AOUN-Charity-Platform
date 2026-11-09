import 'package:flutter/material.dart';
import 'core/routing/app_router.dart';
import 'core/services/firebase_service.dart';
import 'core/theme/app_theme.dart';
import 'injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final firebaseReady = await FirebaseService.initialize();
  await configureDependencies(firebaseReady: firebaseReady);
  runApp(const AounApp());
}

class AounApp extends StatelessWidget {
  const AounApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'AOUN',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        initialRoute: AppRoutes.login,
        routes: AppRouter.routes,
      );
}
