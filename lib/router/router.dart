import 'package:go_router/go_router.dart';
import 'package:qr_code/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:qr_code/features/login/presentation/pages/login_screen.dart';
import 'package:qr_code/features/produk/presentation/pages/produk_detail.dart';
import 'package:qr_code/features/produk/presentation/pages/produk_screen.dart';
import 'package:qr_code/router/pages/error_screen.dart';

part 'router_name.dart';

// GoRouter configuration
final router = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(),
  routes: [
    GoRoute(
      path: '/',
      name: Routes.homePage,
      builder: (context, state) => const LoginScreen(),
      routes: [
        GoRoute(
          path: 'dashboard',
          name: Routes.dasboard,
          builder: (context, state) => const DashboardScreen(),
        ),
        GoRoute(
          path: 'allProduk',
          name: Routes.allProduk,
          builder: (context, state) => const ProdukScreen(),
          routes: [
            //! parsing data di go router
            GoRoute(
              path: 'detailProduk/:id/:title',
              name: Routes.detailProduk,
              builder: (context, state) => ProdukDetail(
                id: state.pathParameters['id']!,
                title: state.pathParameters['title']!,
                // data: state.uri.queryParameters,
              ),
            )
          ],
        ),
      ],
    ),
  ],
);
