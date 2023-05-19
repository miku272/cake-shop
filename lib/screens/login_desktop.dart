import 'package:flutter/material.dart';

import '../widgets/custom_text_form_field.dart';

class LoginDesktop extends StatefulWidget {
  const LoginDesktop({super.key});

  @override
  State<LoginDesktop> createState() => _LoginDesktopState();
}

class _LoginDesktopState extends State<LoginDesktop> {
  final _formKey = GlobalKey<FormState>();
  var isChecked = false;
  var rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Tooltip(
            message: 'Photo by Deva Williamson on Unsplash',
            child: Image.asset(
              'images/desktop_example_pic.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 21.0),
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Text(
                  'Welcome back',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 35.0),
                Form(
                  key: _formKey,
                  child: const Column(
                    children: <Widget>[
                      CustomTextFormField(hintText: 'Email'),
                      SizedBox(height: 20.0),
                      CustomTextFormField(
                        hintText: 'password',
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: rememberMe,
                          onChanged: (value) {
                            if (value != null) {
                              setState(() {
                                rememberMe = value;
                              });
                            }
                          },
                        ),
                        const Text('Remember me'),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.blueAccent,
                      ),
                      child: const Text(
                        'Forget password?',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text('Login'),
                ),
                const SizedBox(height: 15.0),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  icon: const Text(
                    'G',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  label: const Text('Continue with google'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
