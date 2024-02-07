import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code/config/string_resources.dart';
import 'package:qr_code/features/login/presentation/bloc/bloc.dart';
import 'package:qr_code/router/router.dart';
import 'package:qr_code/utils/text_style.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              const SnackBar(
                content: Text('error'),
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
          return Center(
            child: Text(
              StringResources.TEXT_TESTING,
              style: blacTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
