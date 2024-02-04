import 'package:go_router/go_router.dart';
import 'package:qr_code/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:qr_code/features/login/presentation/pages/login_screen.dart';
import 'package:qr_code/router/pages/error_screen.dart';

// GoRouter configuration
final router = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
      routes: [
        GoRoute(
          path: 'dashboardScreen',
          builder: (context, state) => const DashboardScreen(),
        )
      ],
    ),
  ],
);
