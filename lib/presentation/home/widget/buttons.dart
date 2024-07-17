import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_lib/application/genres/genres_bloc.dart';
import 'package:movie_lib/core/constance.dart';
import 'package:movie_lib/presentation/home/genre_movie.dart';

class TopCategotyButton extends StatelessWidget {
  const TopCategotyButton();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          categoryButton(
            title: 'Action',
            onPressed: () {
              context
                  .read<GenresBloc>()
                  .add(const GenresEvent.getGenreList(genreId: 18));
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => const GenreMovie(
                            genreName: 'Action',
                          )));
            },
          ),
          categoryButton(
            title: 'Comedy',
            onPressed: () {
              context
                  .read<GenresBloc>()
                  .add(const GenresEvent.getGenreList(genreId: 35));
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => const GenreMovie(
                            genreName: 'Comedy',
                          )));
            },
          ),
          categoryButton(
            title: 'Document',
            onPressed: () {
              context
                  .read<GenresBloc>()
                  .add(const GenresEvent.getGenreList(genreId: 99));
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => const GenreMovie(
                            genreName: 'Documentary',
                          )));
            },
          ),
          categoryButton(
            title: 'Romance',
            onPressed: () {
              context
                  .read<GenresBloc>()
                  .add(const GenresEvent.getGenreList(genreId: 10749));
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => const GenreMovie(
                            genreName: 'Romantic',
                          )));
            },
          ),
          categoryButton(
            title: 'Horror',
            onPressed: () {
              context
                  .read<GenresBloc>()
                  .add(const GenresEvent.getGenreList(genreId: 27));
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => const GenreMovie(
                            genreName: 'Horror',
                          )));
            },
          ),
          categoryButton(
            title: 'History',
            onPressed: () {
              context
                  .read<GenresBloc>()
                  .add(const GenresEvent.getGenreList(genreId: 36));
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => const GenreMovie(
                            genreName: 'Historical',
                          )));
            },
          ),
          categoryButton(
            title: 'Music',
            onPressed: () {
              context
                  .read<GenresBloc>()
                  .add(const GenresEvent.getGenreList(genreId: 10402));
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => const GenreMovie(
                            genreName: 'Musical',
                          )));
            },
          ),
        ],
      ),
    );
  }
}

class categoryButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  const categoryButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      height: 40,
      width: 90,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: const ButtonStyle(splashFactory: NoSplash.splashFactory),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).textTheme.bodyMedium!.color,
          ),
        ),
      ),
    );
  }
}

class TileButtons extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function() action;

  const TileButtons({
    super.key,
    required this.title,
    required this.action,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      enableFeedback: true,
      splashColor: Colors.grey,
      onTap: action,
      leading: Icon(
        icon,
      ),
      title: Text(
        title,
        style: textStyleSettings,
      ),
      trailing: const Icon(
        CupertinoIcons.chevron_compact_right,
      ),
    );
  }
}
