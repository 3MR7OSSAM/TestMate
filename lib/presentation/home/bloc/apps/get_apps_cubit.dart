import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_mate/data/models/app_model.dart';

import '../../../../domain/repository/home_repo/home_repo.dart';
part 'get_apps_state.dart';



class GetAppsCubit extends Cubit<GetAppsState> {
  final HomeRepo homeRepository;

  GetAppsCubit(this.homeRepository) : super(GetAppsLoading());

  Future<void> fetchApps() async {
    try {
      final apps = await homeRepository.getApps();
      print(apps.length)
;      emit(GetAppsSuccess(apps));
    } catch (e) {
      emit(GetAppsFailure('Add Failure Message'));
    }
  }
}
