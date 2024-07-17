import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_lib/application/cast/cast_bloc.dart';
import 'package:movie_lib/application/firebase/f_irebase_bloc.dart';
import 'package:movie_lib/application/genres/genres_bloc.dart';
import 'package:movie_lib/application/bottom_navigation/bottom_nav_bloc.dart';
import 'package:movie_lib/application/home/home_bloc.dart';
import 'package:movie_lib/application/profile/bloc/profile_bloc.dart';
import 'package:movie_lib/application/search/search_bloc.dart';
import 'package:movie_lib/domain/core/di/dipendency_injecteble.dart';
import 'package:movie_lib/firebase_options.dart';
import 'package:movie_lib/presentation/login/login.dart';
import 'package:movie_lib/presentation/login/singn_up.dart';
import 'package:movie_lib/presentation/login/splash_screen.dart';
import 'package:movie_lib/presentation/main_page.dart';
import 'package:movie_lib/presentation/widgets/theme.dart';
import 'application/theme/theme_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<HomeBloc>()),
        BlocProvider(create: (context) => ThemeBloc()),
        BlocProvider(create: (context) => BottomNavBloc()),
        BlocProvider(create: (context) => getIt<SearchBloc>()),
        BlocProvider(create: (context) => getIt<GenresBloc>()),
        BlocProvider(create: (context) => getIt<CastBloc>()),
        BlocProvider(create: (context) => getIt<FirebaseBloc>()),
        BlocProvider(create: (context) => ProfileBloc()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            routes: {
              LoginScreen.lloginrt: (context) => LoginScreen(),
              SignUpScreen.signuprt: (context) => SignUpScreen(),
              MainPage.mainpagert: (context) => MainPage(),
            },
            debugShowCheckedModeBanner: false,
            themeMode: state,
            darkTheme: darkTheme,
            theme: lightTheme,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
