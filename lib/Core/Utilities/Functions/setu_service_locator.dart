import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../Features/Home/Data/Data Sources/home_local_data_source.dart';
import '../../../Features/Home/Data/Data Sources/home_remote_data_source.dart';
import '../../../Features/Home/Data/Repostries/home_repo_implm.dart';
import '../api_service.dart';

final getIt = GetIt.asNewInstance();

void setupServiceLocatorGetIt() {
   getIt.registerSingleton<HomeRepoImplm>(
    HomeRepoImplm(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        ApiService(
          Dio(),
        ),
      ),
    ),
  );
}