import 'package:flutter/material.dart';
import 'package:qr_code/config/string_resources.dart';
import 'package:qr_code/utils/text_style.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          StringResources.TEXT_ERROR_SCREEN,
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
