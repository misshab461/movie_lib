import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_lib/application/search/search_bloc.dart';
import 'package:movie_lib/application/theme/theme_bloc.dart';
import 'package:movie_lib/core/constance.dart';
import 'package:movie_lib/presentation/home/widget/trending.dart';
import 'package:movie_lib/presentation/profile/widget/account.dart';
import 'package:movie_lib/presentation/widgets/basic_widget.dart';

import '../../application/home/home_bloc.dart';
import '../home/widget/buttons.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SearchBloc>().add(SearchEvent.getSearchItems(name: ''));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const SizedBox(
                    height: 500,
                    width: double.infinity,
                    child: Center(child: CustumLoading()));
              } else if (state.isError) {
                return const Center(
                    child: Text('Error...please try again...!'));
              } else if (state.trendingList.isEmpty) {
                return const SizedBox();
              }
              return CustomCarouselSlider(
                itemBuilder: (context, index, realIndex) {
                  final movie = state.trendingList[index];

                  return ImageContainer(
                    imageUrl: movie.posterPath ?? '',
                    onContainerTap: () {},
                    width: 400,
                  );
                },
                height: 500,
                portFraction: .9,
                itemCount: state.trendingList.length,
              );
            },
          ),
          Spacer(),
          TileButtons(
            title: 'Account',
            icon: CupertinoIcons.person_fill,
            action: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => Accound()));
            },
          ),
          TileButtons(
            title: 'Downloads',
            icon: CupertinoIcons.download_circle_fill,
            action: () {},
          ),
          BlocBuilder<ThemeBloc, ThemeMode>(
            builder: (context, state) {
              return ListTile(
                title: const Text('Dark Theme', style: textStyleSettings),
                trailing: CupertinoSwitch(
                  onChanged: (value) {
                    context.read<ThemeBloc>().add(ThemeChanged(isDark: value));
                  },
                  value: context.read<ThemeBloc>().state == ThemeMode.dark,
                ),
                leading: const Icon(CupertinoIcons.lightbulb_fill,
                    color: Colors.grey),
              );
            },
          ),
        ],
      ),
    );
  }
}
