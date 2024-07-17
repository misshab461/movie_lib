import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_lib/application/firebase/f_irebase_bloc.dart';
import 'package:movie_lib/presentation/login/login.dart';
import 'package:movie_lib/presentation/main_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<FirebaseBloc>().add(const FIrebaseEvent.checkLoginStatus());
    return BlocListener<FirebaseBloc, FirebaseState>(
      listener: (context, state) {
        if (state is Authenticated) {
          Navigator.pushReplacementNamed(context, MainPage.mainpagert);
        } else if (state is UnAuthenticated) {
          Navigator.pushReplacementNamed(context, LoginScreen.lloginrt);
        }
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 400,
                child: Image.asset(
                  'assets/splash.png',
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                ),
              ),
              Image.asset(
                'assets/animaate.gif',
                filterQuality: FilterQuality.high,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
