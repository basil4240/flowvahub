import 'package:flowvahub/core/di/injection_container.dart';
import 'package:flowvahub/core/router/app_router.dart';
import 'package:flowvahub/features/auth/presentation/provider/auth_provider.dart';
import 'package:flowvahub/features/home/presentation/provider/home_provider.dart'; // New import
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (_) {
            final authProvider = sl<AuthProvider>();
            authProvider.checkAuthenticationStatus(); // Check auth status on app start
            return authProvider;
          },
        ),
        ChangeNotifierProvider<HomeProvider>( // New HomeProvider registration
          create: (_) => sl<HomeProvider>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'FlowvaHub',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}