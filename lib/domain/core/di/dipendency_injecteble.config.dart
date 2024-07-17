// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:movie_lib/application/cast/cast_bloc.dart' as _i13;
import 'package:movie_lib/application/firebase/f_irebase_bloc.dart' as _i16;
import 'package:movie_lib/application/genres/genres_bloc.dart' as _i15;
import 'package:movie_lib/application/home/home_bloc.dart' as _i17;
import 'package:movie_lib/application/search/search_bloc.dart' as _i14;
import 'package:movie_lib/domain/cast_crew/i_cast_crew_fazard.dart' as _i3;
import 'package:movie_lib/domain/firebase/i_firebase_fazard.dart' as _i11;
import 'package:movie_lib/domain/genres/i_genres_fazard.dart' as _i7;
import 'package:movie_lib/domain/home/i_home_fazard.dart' as _i9;
import 'package:movie_lib/domain/search/i_search_fazard.dart' as _i5;
import 'package:movie_lib/infrastrecture/cast_crew/cast_crew.dart' as _i4;
import 'package:movie_lib/infrastrecture/firebase/firebase.dart' as _i12;
import 'package:movie_lib/infrastrecture/genres/genres_list.dart' as _i8;
import 'package:movie_lib/infrastrecture/home/tv.dart' as _i10;
import 'package:movie_lib/infrastrecture/search/search.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ICastCrewFazard>(() => _i4.CastCrewResopitory());
    gh.lazySingleton<_i5.ISearchFazard>(() => _i6.ISearchRepository());
    gh.lazySingleton<_i7.IGenresFazard>(() => _i8.GenresMoviesRepository());
    gh.lazySingleton<_i9.IHomeFazard>(() => _i10.IHomeRepository());
    gh.lazySingleton<_i11.FirebaseFazard>(() => _i12.FirebaseRepository());
    gh.factory<_i13.CastBloc>(() => _i13.CastBloc(gh<_i3.ICastCrewFazard>()));
    gh.factory<_i14.SearchBloc>(() => _i14.SearchBloc(gh<_i5.ISearchFazard>()));
    gh.factory<_i15.GenresBloc>(() => _i15.GenresBloc(gh<_i7.IGenresFazard>()));
    gh.factory<_i16.FirebaseBloc>(
        () => _i16.FirebaseBloc(gh<_i11.FirebaseFazard>()));
    gh.factory<_i17.HomeBloc>(() => _i17.HomeBloc(gh<_i9.IHomeFazard>()));
    return this;
  }
}
