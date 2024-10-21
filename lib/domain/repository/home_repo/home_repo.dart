import '../../../data/models/app_model.dart';

abstract class HomeRepo {
  Future<List<AppModel>> getApps();
}