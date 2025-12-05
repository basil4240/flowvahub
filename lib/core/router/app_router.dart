import 'package:flutter/material.dart';
import 'package:flowvahub/features/auth/presentation/screens/forgot_password_screen.dart';
import 'package:flowvahub/features/auth/presentation/screens/login_screen.dart';
import 'package:flowvahub/features/auth/presentation/screens/signup_screen.dart';
import 'package:flowvahub/features/auth/presentation/screens/splash_screen.dart';
import 'package:flowvahub/features/auth/presentation/provider/auth_provider.dart';
import 'package:flowvahub/features/home/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flowvahub/core/di/injection_container.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/splash',
  refreshListenable: GoRouterRefreshStream(sl<AuthProvider>()),
  redirect: (BuildContext context, GoRouterState state) {
    final authProvider = sl<AuthProvider>();
    final isAuthenticated = authProvider.isAuthenticated;
    // final currentUserId = authProvider.currentUserId; // Removed

    // If we are on the splash screen, do not redirect immediately.
    if (state.matchedLocation == '/splash') {
      return null;
    }

    final loggingIn = state.matchedLocation == '/login';
    final signingUp = state.matchedLocation == '/signup';
    final forgotPassword = state.matchedLocation == '/forgot-password';
    final isOnHomeScreen = state.matchedLocation == '/home'; // Changed check

    if (!isAuthenticated) {
      // If not authenticated, only allow access to login, signup, or forgot password pages
      return (loggingIn || signingUp || forgotPassword) ? null : '/signup'; // Default to signup
    }

    // If authenticated, disallow access to login, signup, or forgot password pages
    if (loggingIn || signingUp || forgotPassword) {
      return '/home'; // Redirect to home
    }

    // Ensure authenticated users are on the home screen if not already
    if (isAuthenticated && !isOnHomeScreen) {
      return '/home';
    }

    // No redirection needed
    return null;
  },
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/forgot-password',
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
    GoRoute(
      path: '/home', // Changed back to /home
      builder: (context, state) {
        // final userId = state.pathParameters['userId']; // Removed
        return const HomeScreen(); // No userId passed
      },
    ),
  ],
);

// Helper class to convert ChangeNotifier to Stream for GoRouterRefreshStream
class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(ChangeNotifier notifier) {
    notifier.addListener(notifyListeners);
  }
}
