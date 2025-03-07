import 'package:driver_app/auth_screens/sign_in_screen.dart';
import 'package:driver_app/main.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "images/logo_driver_app.jpg",
                  height: 200,
                  width: 200,
                ),
                const Text(
                  "Driver Sign Up",
                  style: TextStyle(fontSize: 32),
                ),
                const SizedBox(
                  height: 50,
                ),
                //textfields
                //name
                TextField(
                  controller: nameController,
                  style: const TextStyle(color: Colors.grey),
                  decoration: const InputDecoration(
                    labelText: "Name",
                    hintText: "Name",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                //email
                TextField(
                  controller: emailController,
                  style: const TextStyle(color: Colors.grey),
                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "Email",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                //phone
                TextField(
                  controller: phoneController,
                  style: const TextStyle(color: Colors.grey),
                  decoration: const InputDecoration(
                    labelText: "Phone",
                    hintText: "Phone",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                //password
                TextField(
                  controller: passwordController,
                  style: const TextStyle(color: Colors.grey),
                  decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: "Password",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Already have an Account"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInScreen()));
                        },
                        child: const Text("Sign In"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
