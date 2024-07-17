import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_lib/application/cast/cast_bloc.dart';
import 'package:movie_lib/core/constance.dart';
import 'package:movie_lib/core/strings.dart';
import 'package:movie_lib/presentation/widgets/basic_widget.dart';

class DetailsScreen extends StatelessWidget {
  final int movieId;
  final String type;
  final String imageUrl;
  final String title;
  final String voteAverage;
  final String popularity;
  final String language;
  final String voteCount;
  final String releaseDate;
  final String overview;
  const DetailsScreen({
    super.key,
    required this.movieId,
    this.type = 'movie',
    required this.imageUrl,
    required this.title,
    required this.voteAverage,
    required this.popularity,
    required this.language,
    required this.voteCount,
    required this.releaseDate,
    required this.overview,
  });
  static const detailrt = 'rt';

  @override
  Widget build(BuildContext context) {
    context
        .read<CastBloc>()
        .add(CastEvent.getCatList(movieId: movieId, type: type));
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, top: 35),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.bookmark,
                      size: 25,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
              kHeight5,
              Center(
                child: Container(
                  height: 320,
                  width: 240,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage('$imageAppendUrl$imageUrl'),
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 20,
                        spreadRadius: -5,
                      ),
                    ],
                  ),
                ),
              ),
              kHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 250,
                    height: 66,
                    child: Text(
                      title,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.stylish().fontFamily,
                      ),
                    ),
                  ),
                  Text(
                    '⭐$voteAverage',
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                ],
              ),
              kHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  bottomDetails(
                    title: 'Popularity',
                    orgdata: popularity,
                  ),
                  bottomDetails(
                    title: 'Language',
                    orgdata: language,
                  ),
                  bottomDetails(
                    title: 'Review',
                    orgdata: voteCount,
                  ),
                  bottomDetails(
                    title: 'Release Date',
                    orgdata: releaseDate,
                  ),
                ],
              ),
              BlocBuilder<CastBloc, CastState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const SizedBox(
                      height: 110,
                      child: Center(child: CustumLoading()),
                    );
                  } else if (state.hasError) {
                    return const SizedBox(
                        height: 110,
                        child: Center(child: Text('Something Went Wrong')));
                  } else if (state.getCastResult.isEmpty) {
                    return const SizedBox(height: 110);
                  }

                  return SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        state.getCastResult.length,
                        (index) {
                          final cast = state.getCastResult[index];
                          return Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Theme.of(context).primaryColor,
                                backgroundImage: NetworkImage(
                                  '$imageAppendUrl${cast.profilePath ?? ''}',
                                ),
                              ),
                              kWidth,
                            ],
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: Column(
                  children: [
                    const Center(
                      child: Icon(
                        CupertinoIcons.chevron_compact_down,
                        size: 30,
                      ),
                    ),
                    kHeight,
                    Text(
                      overview,
                      maxLines: 5,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                        fontFamily:
                            GoogleFonts.vigaTextTheme().bodyMedium!.fontFamily,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        downloadBar(context);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            'DOWNLOAD',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column bottomDetails({
    required String title,
    required String orgdata,
  }) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 15,
            fontFamily: GoogleFonts.vigaTextTheme().bodyMedium!.fontFamily,
          ),
        ),
        kHeight5,
        Text(
          orgdata,
          style: TextStyle(
            fontFamily: GoogleFonts.vigaTextTheme().bodyMedium!.fontFamily,
          ),
        ),
      ],
    );
  }

  Future<void> downloadBar(context) async {
    Timer? _timer;
    showCupertinoModalPopup(
      semanticsDismissible: true,
      context: context,
      builder: (context) {
        _timer = Timer(
          const Duration(seconds: 2),
          () => Navigator.pop(context),
        );
        return Container(
          height: 150,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.grey.shade700,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
        );
      },
    ).then((value) {
      if (_timer!.isActive) {
        _timer!.cancel();
      }
    });
  }
}
