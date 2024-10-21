part of 'get_apps_cubit.dart';
abstract class GetAppsState {}

final class GetAppsInitial extends GetAppsState {}
final class GetAppsLoading extends GetAppsState {}
final class GetAppsSuccess extends GetAppsState {
  final List<AppModel> apps;
  GetAppsSuccess(this.apps);
}
final class GetAppsFailure extends GetAppsState {
  final String failureMessage;
  GetAppsFailure(this.failureMessage);
}
