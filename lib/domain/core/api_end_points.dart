import 'package:movie_lib/core/strings.dart';
import 'package:movie_lib/infrastrecture/api_key.dart';

class ApiEndpoinds {
  static const tvPoint = '$baseUrl/tv/on_the_air?api_key=$apiKey';
  static const trendingPoint = '$baseUrl/trending/movie/day?api_key=$apiKey';
  static const searchPoint = '$baseUrl/search/movie?api_key=$apiKey&query=';
  static const genrepoint =
      '$baseUrl/discover/movie?api_key=$apiKey&with_genres=';
}
