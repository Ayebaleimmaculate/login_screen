import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    final email = _emailController.text;
    final password = _passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      // Perform login logic here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(50), // Rounded corners for the container
            child: Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height *
                  0.9, // Cover most of the screen height
              width: MediaQuery.of(context).size.width *
                  0.65, // Set the container width to 85% of the screen width
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo with some space on top
                  Image.asset(
                    'assets/images/logo.png',
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(height: 20), // Spacing after logo

                  // Title text
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 34), // Space after title

                  // Email input field
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                      height: 34), // Spacing between email and password fields

                  // Password input field
                  TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 34), // Space after password field

                  // Login button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _login,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        textStyle: const TextStyle(fontSize: 18),
                      ),
                      child: const Text('Login'),
                    ),
                  ),
                  const SizedBox(height: 34), // Space after login button

                  // Row for bottom buttons next to each other
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Navigate to sign up or show message
                        },
                        child: const Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                          width: 8), // Add space between the two buttons
                      TextButton(
                        onPressed: () {
                          // Navigate to the register page
                        },
                        child: const Text(
                          "Register here",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
