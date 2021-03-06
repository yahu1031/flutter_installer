// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../services/api/api_service.dart';
import '../../services/local_storage_service.dart';
import '../../services/shared_prefs/shared_prefs_service.dart';
import '../../services/third_party_services_module.dart';
import '../../utils/utils.dart';
import '../../services/window_size_service.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  gh.lazySingleton<ApiService>(() => ApiService());
  gh.lazySingleton<DialogService>(() => thirdPartyServicesModule.dialogService);
  gh.lazySingleton<LocalStorageService>(() => LocalStorageService());
  gh.lazySingleton<NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  gh.lazySingleton<SharedPrefsService>(() => SharedPrefsService());
  gh.lazySingleton<SnackbarService>(
      () => thirdPartyServicesModule.snackBarService);
  gh.lazySingleton<Utils>(() => Utils());
  gh.factory<WindowSizeService>(() => WindowSizeService());
  return get;
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
  @override
  SnackbarService get snackBarService => SnackbarService();
}
