import 'package:go_router/go_router.dart';
import 'package:smart_ph/features/home/presentation/home_page.dart';
import 'package:smart_ph/features/profile/presentation/profile_page.dart';

final GoRouter appRoutes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return HomePage(title: 'S-Mart PH');
      },
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) {
        return const ProfilePage();
      },
    ),
  ],
);
