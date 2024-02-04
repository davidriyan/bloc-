import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/config/string_resources.dart';
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
                context.go('/dashboardScreen');
              },
              child: Text(
                StringResources.TEXT_DASHBOARD,
                style: blacTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
