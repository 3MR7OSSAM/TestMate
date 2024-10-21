import 'package:test_mate/data/repository/home/home_repo_impl.dart';
import 'package:test_mate/presentation/home/bloc/apps/get_apps_cubit.dart';
import 'package:get_it/get_it.dart';


final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  sl.registerSingleton<HomeRepoImpl>(HomeRepoImpl());
  sl.registerSingleton<GetAppsCubit>(GetAppsCubit(sl.get<HomeRepoImpl>()));
}
