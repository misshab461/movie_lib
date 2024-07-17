import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_lib/application/profile/bloc/profile_bloc.dart';
import 'package:movie_lib/core/constance.dart';
import 'package:movie_lib/presentation/widgets/basic_widget.dart';

class Accound extends StatefulWidget {
  Accound({super.key});

  @override
  State<Accound> createState() => _AccoundState();
}

class _AccoundState extends State<Accound> {
  final icons = [
    CupertinoIcons.mail,
    CupertinoIcons.phone,
  ];
  @override
  void initState() {
    init();
    super.initState();
  }

  Future<void> init() async {
    await Future.delayed(
      const Duration(seconds: 1),
      () {
        return const Center(
          child: CustumLoading(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Image.asset('assets/cover.jpg'),
            Positioned(
              top: 210,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: StreamBuilder<DocumentSnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('users')
                          .doc(user!.uid)
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final data =
                              snapshot.data!.data() as Map<String, dynamic>;
                          return Column(
                            children: [
                              AccountDetails(
                                name: data['username'],
                                height: height,
                                width: width,
                                icon: CupertinoIcons.person,
                              ),
                              AccountDetails(
                                name: data['email'],
                                height: height,
                                width: width,
                                icon: CupertinoIcons.mail,
                              ),
                              AccountDetails(
                                name: data['phone'],
                                height: height,
                                width: width,
                                icon: CupertinoIcons.phone,
                              ),
                            ],
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
                  ),
                ),
              ),
            ),
            Positioned(
              top: 65,
              right: 25,
              child: BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  log(state.image!.path.toString());
                  return CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        state.image != null ? FileImage(state.image!) : null,
                    backgroundColor: Theme.of(context).primaryColor,
                  );
                },
              ),
            ),
            Positioned(
              top: 145,
              right: 12,
              child: IconButton(
                onPressed: () async {
                  pickeImage(context);
                },
                icon: const Icon(
                  CupertinoIcons.person_add_solid,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> pickeImage(context) async {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return BottomSheet(
          onClosing: () {},
          builder: (context) {
            return Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(27),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Select Image Pick Type', style: accountTextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () async {
                            context.read<ProfileBloc>().add(PickImageGallery());
                          },
                          icon: const Icon(CupertinoIcons.photo_on_rectangle,
                              size: 35),
                        ),
                        IconButton(
                          onPressed: () async {
                            context.read<ProfileBloc>().add(PickImageCamera());
                          },
                          icon: const Icon(CupertinoIcons.camera, size: 35),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class AccountDetails extends StatelessWidget {
  final IconData icon;
  final String name;
  const AccountDetails({
    super.key,
    required this.name,
    required this.height,
    required this.width,
    required this.icon,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Container(
          padding: EdgeInsets.all(16),
          height: height / 15,
          width: width - 60,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 2),
                blurRadius: 20,
                spreadRadius: -13,
              )
            ],
          ),
          child: Row(
            children: [
              Icon(
                icon,
              ),
              kWidth,
              Text(
                name,
                style: accountTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
