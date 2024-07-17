import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_lib/application/firebase/f_irebase_bloc.dart';
import 'package:movie_lib/application/profile/bloc/profile_bloc.dart';
import 'package:movie_lib/core/constance.dart';
import 'package:movie_lib/domain/firebase/user_mode.dart';
import 'package:movie_lib/presentation/main_page.dart';
import 'package:movie_lib/presentation/widgets/basic_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const signuprt = 'signup';

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    final repeatController = TextEditingController();

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
                      height: 110,
                      width: 190,
                      child: Image.asset(
                        'assets/movielogo.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 130,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 10,
                          child: Text(
                            "Let's Register\nYour Account",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.spectral().fontFamily,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          child: BlocBuilder<ProfileBloc, ProfileState>(
                            builder: (context, state) {
                              return CircleAvatar(
                                radius: 60,
                                backgroundImage: state.image != null
                                    ? FileImage(state.image!)
                                    : null,
                                backgroundColor: Theme.of(context).primaryColor,
                              );
                            },
                          ),
                        ),
                        Positioned(
                          right: 3,
                          bottom: 5,
                          child: IconButton(
                            onPressed: () async {
                              context
                                  .read<ProfileBloc>()
                                  .add(PickImageGallery());
                            },
                            icon: const Icon(
                              CupertinoIcons.person_add_solid,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  kHeight20,
                  UserInputField(
                    controller: usernameController,
                    hint: 'Username',
                    icon: CupertinoIcons.person_alt,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'username is required';
                      } else {
                        return null;
                      }
                    },
                  ),
                  kHeight,
                  UserInputField(
                    controller: emailController,
                    hint: 'Email',
                    icon: CupertinoIcons.mail_solid,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter valid email';
                      } else if (value.endsWith('@gmail.com') == false) {
                        return 'enter correct email';
                      } else {
                        return null;
                      }
                    },
                  ),
                  kHeight,
                  UserInputField(
                    controller: phoneController,
                    hint: 'Phone Number',
                    icon: CupertinoIcons.phone_fill,
                    textInputType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'number is required';
                      } else if (value.length < 10 || value.length > 10) {
                        return 'number must be 10 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                  kHeight,
                  UserInputField(
                    controller: passwordController,
                    hint: 'Password',
                    obscureText: true,
                    icon: CupertinoIcons.lock_fill,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'password is required';
                      } else if (value.length < 6) {
                        return 'password must be 6 characters';
                      } else {
                        return null;
                      }
                    },
                  ),
                  kHeight,
                  UserInputField(
                    controller: repeatController,
                    hint: 'Repeat Password',
                    obscureText: true,
                    icon: CupertinoIcons.lock_fill,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'enter correct password';
                      } else if (value != passwordController.text) {
                        return 'password does not match';
                      } else {
                        return null;
                      }
                    },
                  ),
                  kHeight20,
                  BlocBuilder<FirebaseBloc, FirebaseState>(
                    builder: (context, state) {
                      if (state is Loading) {
                        return const Center(child: CustumLoading());
                      } else if (state is Authenticated) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          Navigator.pushReplacementNamed(
                              context, MainPage.mainpagert);
                        });
                      }
                      return InkWell(
                        onTap: () async {
                          if (formKey.currentState!.validate()) {
                            final user = UserModel(
                                name: usernameController.text,
                                email: emailController.text,
                                password: passwordController.text,
                                phone: phoneController.text);

                            context
                                .read<FirebaseBloc>()
                                .add(FIrebaseEvent.signupEvent(user));
                          } else {}
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
                              'SignUp',
                              style: accountTextStyle,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Aldredy have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: InkWell(
                      child: Image.asset(
                        'assets/googlenew.png',
                        width: 60,
                      ),
                    ),
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
