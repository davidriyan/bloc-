import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  const ProdukDetail({
    required this.id,
    required this.title,
    // required this.data,
    super.key,
  });

  final String id;
  final String title;
  // final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(id),
            Text(title),
          ],
        ),
      ),
    );
  }
}
