import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:movie_lib/core/strings.dart';
import 'package:movie_lib/presentation/home/details.dart';
import 'package:movie_lib/presentation/widgets/basic_widget.dart';

import '../../../application/home/home_bloc.dart';

class Trending extends StatelessWidget {
  Trending({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(const HomeEvent.getTvList());

    return SizedBox(
      height: 240,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CustumLoading());
          } else if (state.isError) {
            return const Center(child: Text('Error...please try again...!'));
          } else if (state.trendingList.isEmpty) {
            return const SizedBox();
          }
          return CustomCarouselSlider(
            itemBuilder: (context, index, realIndex) {
              final movie = state.trendingList[index];

              final date = DateTime.parse(movie.releaseDate.toString());
              final dateof = DateFormat.yMMMMd('en_US').format(date);

              return ImageContainer(
                imageUrl: movie.posterPath ?? '',
                onContainerTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => DetailsScreen(
                        movieId: movie.id!,
                        imageUrl: movie.posterPath ?? 'Null',
                        title: movie.title ?? 'Null',
                        voteAverage: movie.voteAverage.toString(),
                        popularity: movie.popularity.toString(),
                        language: movie.originalLanguage ?? 'Null',
                        voteCount: movie.voteCount.toString(),
                        releaseDate: dateof,
                        overview: movie.overview ?? 'Null',
                      ),
                    ),
                  );
                },
              );
            },
            itemCount: state.trendingList.length,
          );
        },
      ),
    );
  }
}

class TvSeries extends StatelessWidget {
  TvSeries({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 230,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CustumLoading());
          } else if (state.isError) {
            return const Center(child: Text('Error...please try again...!'));
          } else if (state.tvList.isEmpty) {
            return const SizedBox();
          }
          return CustomCarouselSlider(
            itemBuilder: (context, index, realIndex) {
              final tv = state.tvList[index];

              final date = DateTime.parse(tv.firstAirDate.toString());
              final dateof = DateFormat.yMMMMd('en_US').format(date);
              return ImageContainer(
                imageUrl: tv.posterPath ?? '',
                onContainerTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => DetailsScreen(
                        movieId: tv.id!,
                        type: 'tv',
                        imageUrl: tv.posterPath ?? 'Null',
                        title: tv.name ?? 'Null',
                        voteAverage: tv.voteAverage.toString(),
                        popularity: tv.popularity.toString(),
                        language: tv.originalLanguage ?? 'Null',
                        voteCount: tv.voteCount.toString(),
                        releaseDate: dateof,
                        overview: tv.overview ?? 'Null',
                      ),
                    ),
                  );
                },
              );
            },
            itemCount: state.tvList.length,
          );
        },
      ),
    );
  }
}

class CustomCarouselSlider extends StatelessWidget {
  final Widget Function(BuildContext context, int index, int realIndex)
      itemBuilder;
  final int itemCount;
  final double portFraction;
  final double height;

  const CustomCarouselSlider({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.portFraction = 0.55,
    this.height = 230,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: height,
        viewportFraction: portFraction,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 2),
        enlargeCenterPage: true,
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
      itemBuilder: itemBuilder,
      itemCount: itemCount,
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer(
      {super.key,
      required this.imageUrl,
      required this.onContainerTap,
      this.width = 170});

  final String imageUrl;
  final void Function() onContainerTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onContainerTap,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              offset: Offset(8, 0),
              blurRadius: 20,
              spreadRadius: -18,
            ),
          ],
          image: DecorationImage(
            image: NetworkImage('$imageAppendUrl$imageUrl'),
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
