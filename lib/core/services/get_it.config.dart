// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/auth/data/datasources/auth_data_source.dart' as _i7;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i10;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i9;
import '../../features/chats/data/data_sources/chat_data_source.dart' as _i11;
import '../../features/chats/data/repositories/chat_repository_impl.dart'
    as _i13;
import '../../features/chats/domain/repositories/chat_repository.dart' as _i12;
import '../../features/shared/domain/services/key_value_storage_service.dart'
    as _i5;
import '../../features/shared/domain/services/key_value_storage_service_impl.dart'
    as _i6;
import '../theme/app_theme.dart' as _i3;
import 'http_client.dart' as _i4;
import 'services.dart' as _i8;

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
    gh.singleton<_i3.AppTheme>(_i3.AppTheme());
    gh.factory<_i4.DioClient>(() => _i4.DioClient());
    gh.lazySingleton<_i5.KeyValueStorageService>(
        () => _i6.KeyValueStorageServiceImpl());
    gh.factory<_i7.AuthDataSource>(() => _i7.AuthService(gh<_i8.DioClient>()));
    gh.factory<_i9.AuthRepository>(
        () => _i10.AuthRepositoryImpl(gh<_i7.AuthDataSource>()));
    gh.factory<_i11.ChatDataSource>(
        () => _i11.ChatDataSourceImpl(gh<_i4.DioClient>()));
    gh.factory<_i12.ChatRepository>(
        () => _i13.ChatRepositoryImp(gh<_i11.ChatDataSource>()));
    return this;
  }
}
