import 'package:get_it/get_it.dart';

import '../../data/local/pick_file_from_local.dart';
import '../../data/local/pick_file_from_local_impl.dart';
import '../../data/repository/upload_file_repository_impl.dart';
import '../../domain/repository/upload_file_repository.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  initFileUploadInjections();
}

void initFileUploadInjections() {
  // Remote data source
  getIt.registerLazySingleton<PickFileFromLocal>(() => PickFileFromLocalImpl());

  // Repositories
  getIt.registerLazySingleton<UploadFileRepository>(
    () => UploadFileRepositoryImpl(getIt()),
  );

  // UserCases
  // getIt.registerFactory<LoginUseCase>(() => LoginUseCase(getIt()));
  // getIt.registerFactory(() => VerificationUseCase(getIt()));
}
