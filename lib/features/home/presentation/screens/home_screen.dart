import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flowvahub/core/di/injection_container.dart';
import 'package:flowvahub/features/auth/presentation/provider/auth_provider.dart';
import 'package:flowvahub/features/home/presentation/provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  // final String userId; // Removed userId
  const HomeScreen({super.key}); // Removed required this.userId

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Fetch user details when the screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HomeProvider>(context, listen: false).fetchUserDetails(); // No userId passed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Consumer<HomeProvider>(
        builder: (context, homeProvider, child) {
          if (homeProvider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (homeProvider.hasError) {
            return Center(
              child: Text(
                homeProvider.errorMessage ?? 'Failed to load user data',
                style: const TextStyle(color: Colors.red),
              ),
            );
          } else if (homeProvider.userDetails != null) {
            final user = homeProvider.userDetails!;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Welcome, ${user.email}!', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text('User ID: ${user.id}'),
                  Text('Role: ${user.role}'),
                  user.createdAt != null
                      ? Text('Created At: ${user.createdAt!.toLocal().toIso8601String().split('T')[0]}')
                      : const SizedBox.shrink(),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () async {
                      await sl<AuthProvider>().logout();
                      // Logout will trigger a redirect due to refreshListenable
                    },
                    child: const Text('Logout'),
                  ),
                ],
              ),
            );
          }
          return const Center(child: Text('No user data available.'));
        },
      ),
    );
  }
}
