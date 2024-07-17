import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:movie_lib/application/search/search_bloc.dart';
import 'package:movie_lib/core/constance.dart';
import 'package:movie_lib/core/strings.dart';
import 'package:movie_lib/presentation/home/details.dart';

class SearchedIdle extends StatelessWidget {
  const SearchedIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Text(
          ' Seach Results',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.alkalami().fontFamily,
          ),
        ),
        SizedBox(
          height: 608,
          width: double.infinity,
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.builder(
                shrinkWrap: true,
                itemCount: state.searchList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final searchList = state.searchList[index];
                  if (searchList.releaseDate == '') {
                    return null;
                  }
                  final date =
                      DateTime.parse(searchList.releaseDate.toString());
                  final dateof = DateFormat.yMMMMd('en_US').format(date);

                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => DetailsScreen(
                            movieId: searchList.id!,
                            imageUrl: searchList.posterPath ?? 'Null',
                            title: searchList.title ?? 'Null',
                            voteAverage: searchList.voteAverage.toString(),
                            popularity: searchList.popularity.toString(),
                            language: searchList.originalLanguage ?? 'Null',
                            voteCount: searchList.voteCount.toString(),
                            releaseDate: dateof,
                            overview: searchList.overview ?? 'Null',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 25),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.2),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                              '$imageAppendUrl${searchList.posterPath}'),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
