import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String loginEmail = '';
  String loginPassword = '';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: SizedBox(
          height: screenHeight * 0.5,
          width: screenWidth * 0.35,
          child: Card(
            color: const Color.fromARGB(255, 247, 244, 244),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Sign in to continue',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 5.0,
                          ),
                          decoration: BoxDecoration(
                            // shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'email',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 5.0,
                          ),
                          decoration: BoxDecoration(
                            // shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'password',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.0,
                      ),
                    ),
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
