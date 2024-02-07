// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
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
  redirect: (context, state) {
    FirebaseAuth auth = FirebaseAuth.instance;
    print(auth.currentUser);
    if (auth.currentUser == null) {
      return '/login';
    } else {
      return null;
    }
  },
  routes: [
    GoRoute(
      path: '/',
      name: Routes.dashboard,
      builder: (context, state) => const DashboardScreen(),
      routes: [
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
    GoRoute(
      path: '/login',
      name: Routes.login,
      builder: (context, state) => LoginScreen(),
    )
  ],
);
