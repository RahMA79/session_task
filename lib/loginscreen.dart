import 'package:flutter/material.dart';
import 'package:task_4/BMI_calculator.dart';
import 'package:task_4/components/customTextForm.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            ),
            CustomField(
              prefix: const Icon(Icons.email),
              type: TextInputType.emailAddress,
              controller: emailController,
              label: 'email',
              hintTxt: 'Enter your email',
              val: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email . This field is required.';
                }
                return null;
              },
            ),
            CustomField(
              prefix: const Icon(Icons.password),
              suffix: const Icon(Icons.remove_red_eye),
              type: TextInputType.visiblePassword,
              controller: passwordController,
              label: 'Password',
              hintTxt: 'Enter your password ',
              val: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Password . This field is required.';
                }
                return null;
              },
            ),
            GestureDetector(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) {
                    return const BMICalculator();
                  }));
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(16)),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
