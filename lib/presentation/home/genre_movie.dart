import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:movie_lib/application/genres/genres_bloc.dart';
import 'package:movie_lib/core/strings.dart';
import 'package:movie_lib/presentation/home/details.dart';
import 'package:movie_lib/presentation/widgets/basic_widget.dart';

class GenreMovie extends StatelessWidget {
  final String genreName;
  const GenreMovie({
    super.key,
    required this.genreName,
  });
  static const genresrt = 'rt';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      CupertinoIcons.chevron_compact_left,
                      size: 30,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  Text(
                    '$genreName Movie List',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.trykker().fontFamily,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 740,
                child: BlocBuilder<GenresBloc, GenresState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(child: CustumLoading());
                    }
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        final category = state.genresList[index];
                        final date =
                            DateTime.parse(category.releaseDate.toString());
                        final dateof = DateFormat.yMMMMd('en_US').format(date);
                        return InkWell(
                          splashFactory: NoSplash.splashFactory,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => DetailsScreen(
                                  movieId: category.id!,
                                  imageUrl: category.posterPath ?? '',
                                  title: category.title ?? '',
                                  voteAverage: category.voteAverage.toString(),
                                  popularity: category.popularity.toString(),
                                  language: category.originalLanguage ?? '',
                                  voteCount: category.voteAverage.toString(),
                                  releaseDate: dateof,
                                  overview: category.overview ?? '',
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 25),
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "$imageAppendUrl${category.posterPath}"),
                                  filterQuality: FilterQuality.high,
                                  fit: BoxFit.cover,
                                )),
                          ),
                        );
                      },
                      itemCount: state.genresList.length,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
