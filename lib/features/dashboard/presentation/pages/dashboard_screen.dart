import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/features/login/presentation/bloc/bloc.dart';
import 'package:qr_code/router/router.dart';
import 'package:qr_code/utils/colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                context.read<BlocBloc>().add(BlocEventLogout());
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: BlocConsumer<BlocBloc, BlocState>(
        listener: (context, state) {
          if (state is BlocStateLogout) {
            context.goNamed(Routes.login);
          }
          if (state is BlocStateError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(seconds: 2),
                content: Text(state.message),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is BlocStateLoading) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
          return GridView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              late String title;
              late IconData icon;
              late VoidCallback onTap;
              switch (index) {
                case 0:
                  title = 'Tambah data';
                  icon = Icons.post_add_outlined;
                  onTap = () {};
                  break;
                case 1:
                  title = 'Produk';
                  icon = Icons.list_alt_outlined;
                  onTap = () {};
                  break;
                case 2:
                  title = 'Qr Code';
                  icon = Icons.qr_code;
                  onTap = () {};
                  break;
                case 3:
                  title = 'Catalog';
                  icon = Icons.document_scanner_outlined;
                  onTap = () {};
                  break;
              }
              return Material(
                elevation: 10,
                color: AppColors.greyColor,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: onTap,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        size: 50,
                      ),
                      const SizedBox(height: 10),
                      Text(title),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
