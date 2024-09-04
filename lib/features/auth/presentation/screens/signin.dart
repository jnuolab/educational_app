import 'package:educational_app/features/auth/presentation/controllers/sign_in_controller.dart';
import 'package:educational_app/features/auth/presentation/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Already have an account?',
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
            const SizedBox(height: 40),
            MaterialButton(
              color: Colors.blue,
              minWidth: 350,
              textColor: Colors.white,
              onPressed: () {
                Get.to(const SignUp());
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text('Login'),
              ),
            ),
            const SizedBox(height: 40),
            const Divider(),
            const SizedBox(height: 40),
            const Text(
              'Are you new here?',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'CircularStd-Bold',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Start Learning Today',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'CircularStd-Medium',
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),
            MaterialButton(
              onPressed: () {},
              // color: Colors.blue,
              minWidth: 350,
              textColor: Colors.blue,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 1),
                ),
                child: const Text('Create Account'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
