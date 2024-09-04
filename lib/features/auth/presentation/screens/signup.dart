import 'package:educational_app/features/auth/presentation/controllers/sign_in_controller.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Create a account?',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'CircularStd-Bold',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Recomece de onde parou?',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'CircularStd-Medium',
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            customButton(
              name: 'Facebook',
              background: Colors.blue,
              icon: const Icon(Icons.facebook),
              onPressed: () {
                SignInController.signInWithFacebbok();
              },
            ),
            customButton(
              name: 'Google',
              background: Colors.blue,
              icon: const Icon(Icons.facebook),
              onPressed: () {
                SignInController.signInWithGoogle();
              },
            ),
            customButton(
              name: 'Email',
              background: Colors.blue,
              icon: const Icon(Icons.mail),
              onPressed: () {},
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: copyrightWidget(
                  'By using it you confirm that you have read and agree to our terms of service and privacy policy'),
            ),
          ],
        ),
      ),
    );
  }

  Widget copyrightWidget(String text) {
    return Text(text);
  }

  TextButton customButton({
    required String name,
    required Color background,
    required Icon icon,
    required void Function()? onPressed,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: 350,
        color: background,
        child: Row(
          children: [
            const SizedBox(width: 10),
            icon,
            const SizedBox(width: 10),
            Text(
              name,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
