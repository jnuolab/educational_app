import 'package:educational_app/features/auth/presentation/controllers/sign_in_controller.dart';
import 'package:educational_app/features/auth/presentation/screens/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Educational App',
      home: SignIn(),
      // home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                SignInController.signInWithFacebbok();
              },
              child: const Text("Sign in with Facebook"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                SignInController.signInWithGoogle();
              },
              child: const Text("Sign in with Google"),
            ),
          ],
        ),
      ),
    );
  }
}
