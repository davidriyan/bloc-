import 'package:go_router/go_router.dart';
import 'package:qr_code/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:qr_code/features/login/presentation/pages/login_screen.dart';
import 'package:qr_code/features/produk/presentation/pages/produk_detail.dart';
import 'package:qr_code/features/produk/presentation/pages/produk_screen.dart';
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
          path: 'dashboard',
          builder: (context, state) => const DashboardScreen(),
        ),
        GoRoute(
          path: 'allProduk',
          builder: (context, state) => const ProdukScreen(),
          routes: [
            //! parsing data di go router
            GoRoute(
              path: ':id',
              builder: (context, state) =>
                  ProdukDetail(id: state.pathParameters['id']!),
            )
          ],
        ),
      ],
    ),
  ],
);
