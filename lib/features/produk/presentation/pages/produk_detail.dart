import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  const ProdukDetail({
    required this.id,
    super.key,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('data $id'),
      ),
    );
  }
}
