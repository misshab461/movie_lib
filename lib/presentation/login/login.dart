// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_lib/application/firebase/f_irebase_bloc.dart';
import 'package:movie_lib/core/constance.dart';
import 'package:movie_lib/presentation/login/singn_up.dart';
import 'package:movie_lib/presentation/main_page.dart';
import 'package:movie_lib/presentation/widgets/basic_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const lloginrt = 'login';

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      height: 90,
                      width: 230,
                      child: Image.asset(
                        'assets/movielogo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  kHeight20,
                  Text(
                    "Let's Sign you in",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.spectral().fontFamily,
                    ),
                  ),
                  Text(
                    "Welcome back\nYou've been missed!",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.grey,
                      fontWeight: FontWeight.w100,
                      fontFamily: GoogleFonts.dellaRespira().fontFamily,
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text('  Enter your Email'),
                  kHeight5,
                  UserInputField(
                    controller: _emailController,
                    hint: 'Email',
                    icon: CupertinoIcons.person_alt,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'email is required';
                      } else if (value.endsWith('@gmail.com') == false) {
                        return 'enter correct email';
                      } else {
                        return null;
                      }
                    },
                  ),
                  kHeight20,
                  const Text('  Enter your password'),
                  kHeight5,
                  UserInputField(
                    controller: _passwordController,
                    hint: 'Password',
                    obscureText: true,
                    icon: CupertinoIcons.lock_fill,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'password is required';
                      } else {
                        return null;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't remember your password?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      TextButton(
                        style: const ButtonStyle(
                            splashFactory: NoSplash.splashFactory),
                        onPressed: () {},
                        child: const Text(
                          'forgott password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SignUpScreen.signuprt);
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  kHeight,
                  BlocBuilder<FirebaseBloc, FirebaseState>(
                    builder: (context, state) {
                      if (state is Loading) {
                        return const Center(child: CustumLoading());
                      } else if (state is Authenticated) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          Navigator.pushReplacementNamed(
                              context, MainPage.mainpagert);
                        });
                      } else if (state is HasError) {
                        WidgetsBinding.instance.addPostFrameCallback(
                          (_) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('correct your email or password',
                                    textAlign: TextAlign.center,
                                    style: textStyleSettings),
                                backgroundColor:
                                    Color.fromARGB(255, 239, 122, 113),
                                behavior: SnackBarBehavior.floating,
                                padding: EdgeInsets.all(10),
                                duration: Duration(milliseconds: 1500),
                              ),
                            );
                          },
                        );
                      }
                      return InkWell(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            context.read<FirebaseBloc>().add(LoginEvent(
                                email: _emailController.text,
                                password: _passwordController.text));
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade600,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: accountTextStyle,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  kHeight,
                  Center(child: Text('OR', style: accountTextStyle)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Image.asset(
                          'assets/googlenew.png',
                          width: 60,
                        ),
                      ),
                      kWidth20,
                      InkWell(
                        child: Image.asset(
                          'assets/facebook.png',
                          width: 80,
                        ),
                      ),
                      InkWell(
                        child: Image.asset(
                          'assets/instagram.png',
                          width: 70,
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Terms and Conditions',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
