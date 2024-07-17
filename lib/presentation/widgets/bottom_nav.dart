import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:movie_lib/application/bottom_navigation/bottom_nav_bloc.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return GNav(
          gap: 4,
          iconSize: 30,
          activeColor: Colors.black,
          tabBorderRadius: 20,
          curve: Curves.easeOutCubic,
          tabBackgroundGradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.grey,
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          selectedIndex: state.index,
          onTabChange: (value) {
            context
                .read<BottomNavBloc>()
                .add(BottomNavEvent.pressed(index: value));
          },
          tabs: const [
            GButton(icon: CupertinoIcons.house_alt, text: 'Home'),
            GButton(icon: CupertinoIcons.heart, text: 'Favorites'),
            GButton(icon: CupertinoIcons.person, text: 'Profile')
          ],
        );
      },
    );
  }
}
