import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_ph/core/widgets/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  void _goToHome(BuildContext context) {
    context.go('/');
  }

  void _refreshProfilePage(BuildContext context) {
    context.replace('/profile');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => _refreshProfilePage(context),
            icon: const Icon(Icons.refresh),
            tooltip: 'Refresh Profile',
          ),
        ],
        leading: BackButton(
          onPressed: () {
            _goToHome(context);
          },
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _goToHome(context),
          child: const AppText('Back to Home'),
        ),
      ),
    );
  }
}
