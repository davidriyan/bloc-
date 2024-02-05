import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/config/string_resources.dart';

class ProdukScreen extends StatelessWidget {
  const ProdukScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              context.go('/allProduk/${index + 1}');
            },
            leading: Text('${index + 1}'),
            title: Text(
              '${StringResources.TEXT_NOMOR_PRODUK} ${index + 1}',
            ),
          );
        },
      ),
    );
  }
}
