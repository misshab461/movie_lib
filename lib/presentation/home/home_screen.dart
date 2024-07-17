import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_lib/core/constance.dart';
import 'package:movie_lib/presentation/home/searched_idle.dart';
import 'package:movie_lib/presentation/home/widget/buttons.dart';
import 'package:movie_lib/presentation/home/widget/trending.dart';
import 'package:movie_lib/presentation/widgets/basic_widget.dart';

import '../../application/search/search_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchPad(
                width: width,
                onChange: (name) {
                  context
                      .read<SearchBloc>()
                      .add(SearchEvent.getSearchItems(name: name));
                },
              ),
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.searchList.isEmpty) {
                    if (state.isLoading) {
                      return const Center(child: CustumLoading());
                    } else if (state.hasError) {
                      return const Center(child: Text('Something Went Wrong'));
                    }
                    return HomeElements(width: width);
                  } else {
                    return const SearchedIdle();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeElements extends StatelessWidget {
  const HomeElements({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TopCategotyButton(),
        const Text(
          'Trending',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        Trending(width: width),
        kHeight,
        const Text(
          'Tv Series',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight5,
        TvSeries(width: width),
      ],
    );
  }
}

class SearchPad extends StatelessWidget {
  final void Function(String name) onChange;
  const SearchPad({
    super.key,
    required this.width,
    required this.onChange,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: width - 20,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(CupertinoIcons.search, color: Theme.of(context).hintColor),
          kWidth,
          Expanded(
            child: TextFormField(
              onChanged: onChange,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search Movie Here...',
                hintStyle: TextStyle(
                  color: Theme.of(context).hintColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
