import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_lib/application/firebase/f_irebase_bloc.dart';
import 'package:movie_lib/application/profile/bloc/profile_bloc.dart';
import 'package:movie_lib/core/constance.dart';
import 'package:movie_lib/presentation/home/home_screen.dart';
import 'package:movie_lib/presentation/home/widget/buttons.dart';
import 'package:movie_lib/presentation/login/login.dart';
import 'package:movie_lib/presentation/profile/widget/account.dart';
import 'package:movie_lib/presentation/saved/saved_screen.dart';
import 'package:movie_lib/presentation/profile/profile_screen.dart';
import 'package:movie_lib/presentation/widgets/basic_widget.dart';
import 'package:movie_lib/presentation/widgets/bottom_nav.dart';

import '../application/bottom_navigation/bottom_nav_bloc.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final _pages = [
    const HomeScreen(),
    const SavedScreen(),
    const ProfileScreen(),
  ];
  static const mainpagert = 'main';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                height: 100,
                width: 150,
                child: BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    return CircleAvatar(
                      radius: 30,
                      backgroundColor: Theme.of(context).primaryColor,
                      backgroundImage:
                          state.image != null ? FileImage(state.image!) : null,
                    );
                  },
                ),
              ),
            );
          },
        ),
        actions: [
          SizedBox(
            height: 100,
            width: 170,
            child: Image.asset(
              'assets/movielogo.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      drawer: CustomDrawerWid(),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          margin:
              const EdgeInsets.only(top: 1, left: 10, right: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 20,
                spreadRadius: -19,
              ),
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          height: 50,
          width: double.infinity,
          child: const MyBottomNav(),
        ),
      ),
      body: BlocBuilder<BottomNavBloc, BottomNavState>(
        builder: (context, state) {
          return _pages[state.index];
        },
      ),
    );
  }
}

class CustomDrawerWid extends StatelessWidget {
  CustomDrawerWid({
    super.key,
  });
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      clipBehavior: Clip.none,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight,
              Center(
                child: BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    return CircleAvatar(
                      radius: 55,
                      backgroundColor: Theme.of(context).primaryColor,
                      backgroundImage:
                          state.image != null ? FileImage(state.image!) : null,
                    );
                  },
                ),
              ),
              kHeight5,
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('users')
                    .doc(user!.uid)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final data = snapshot.data!.data() as Map<String, dynamic>;
                    return Center(
                      child: Column(
                        children: [
                          Text(data['email']),
                          Text(
                            data['username'],
                            style: textStyleSettings,
                          ),
                        ],
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('${snapshot.hasError}'),
                    );
                  }
                  return const Center(
                    child: CustumLoading(),
                  );
                },
              ),
              kHeight,
              Divider(color: kGreyColor),
              kHeight20,
              TileButtons(
                title: 'Upgrade to Premium',
                action: () {},
                icon: CupertinoIcons.money_dollar_circle,
              ),
              TileButtons(
                title: 'My Account',
                action: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Accound()));
                },
                icon: CupertinoIcons.person,
              ),
              TileButtons(
                title: 'Server List',
                action: () {},
                icon: Icons.laptop_sharp,
              ),
              TileButtons(
                title: 'About me',
                action: () {},
                icon: CupertinoIcons.info_circle,
              ),
              TileButtons(
                title: 'Help & Support',
                action: () {},
                icon: CupertinoIcons.bubble_left_bubble_right,
              ),
              TileButtons(
                title: 'Logout',
                action: () {
                  logoutDialog(context);
                },
                icon: Icons.exit_to_app,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> logoutDialog(context) async {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(10),
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: BlocBuilder<FirebaseBloc, FirebaseState>(
            builder: (context, state) {
              if (state is Loading) {
                const Center(child: CustumLoading());
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Do you wanna really logout this account?',
                      style: accountTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "I don't want",
                          style: accountTextStyle,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          context
                              .read<FirebaseBloc>()
                              .add(const SignoutEvent());

                          Navigator.pushNamedAndRemoveUntil(
                              context, LoginScreen.lloginrt, (route) => false);
                        },
                        child: Text(
                          'Yes I want',
                          style: accountTextStyle,
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }
}
