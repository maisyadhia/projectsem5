import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// Pastikan menambahkan dependensi go_router di pubspec.yaml

void main() {
  // Konfigurasi router
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/about',
        builder: (context, state) => const AboutPage(),
      ),
    ],
  );

  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  final GoRouter router;
  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Router Example',
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Router Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/about'),
          // GoRouter: navigasi langsung berdasarkan path
          child: const Text('Ke Halaman About'),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman About')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/'),
          // Kembali ke home
          child: const Text('Kembali ke Home'),
        ),
      ),
    );
  }
}
