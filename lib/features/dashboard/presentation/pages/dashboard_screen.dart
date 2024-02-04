import 'package:flutter/material.dart';
import 'package:qr_code/config/string_resources.dart';
import 'package:qr_code/utils/text_style.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          StringResources.TEXT_TESTING,
          style: blacTextStyle.copyWith(
            fontSize: 20,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
