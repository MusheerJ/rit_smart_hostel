import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _header(context),
          Image.asset(
            'assets/images/img.png',
            fit: BoxFit.contain,
            width: 200,
            height: 200,
          ),
          _inputField(context),
          _forgotPassword(context),
        ],
      ),
    ));
  }

  _header(context) {
    return Column(
      children: const [
        Text(
          "Welcome Back",
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text("Enter your credentails to login"),
      ],
    );
  }

  _inputField(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              prefixIcon: const Icon(Icons.mail),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              prefixIcon: const Icon(Icons.lock),
            ),
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.homeRoute);
            },
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(vertical: 16)),
          )
        ],
      ),
    );
  }

  _forgotPassword(context) {
    return TextButton(
      onPressed: () {},
      child: const Text("Forgot password?"),
    );
  }
}
