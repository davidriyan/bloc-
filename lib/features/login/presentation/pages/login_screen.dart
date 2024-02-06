import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/config/string_resources.dart';
import 'package:qr_code/router/router.dart';
import 'package:qr_code/utils/text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.goNamed(Routes.dasboard);
              },
              child: Text(
                StringResources.TEXT_DASHBOARD,
                style: blacTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //! routing menggunakan path
              // context.go('/allProduk');
              //! menggunakan go Named
              context.goNamed(Routes.allProduk);
            },
            child: Text(
              StringResources.TEXT_ALL_PRODUK,
              style: blacTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          )
        ],
      ),
    );
  }
}
