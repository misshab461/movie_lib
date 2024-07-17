import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_lib/application/search/search_bloc.dart';
import 'package:movie_lib/presentation/saved/widget/saved_items.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SearchBloc>().add(const SearchEvent.getSearchItems(name: ''));
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const SavedItems();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 20);
      },
      itemCount: 3,
    );
  }
}
