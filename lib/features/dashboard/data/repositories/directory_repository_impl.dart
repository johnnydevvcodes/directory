import 'package:directory/core/error/app_error.dart';
import 'package:directory/features/dashboard/data/dashboard_data.dart';
import 'package:directory/features/dashboard/data/services/directory_service.dart';
import 'package:directory/features/dashboard/domain/dashboard_domain.dart';
import 'package:fpdart/fpdart.dart';

class DirectoryRepositoryImpl implements DirectoryRepository {
  final DirectoryService directoryService;

  DirectoryRepositoryImpl(this.directoryService);

  @override
  Future<Either<AppError, DirectoryEntity>> getDirectory() async {
    final result = await directoryService.getDirectoryData();
    return result.fold(
      left,
      (model) => right(model.toEntity()),
    );
  }
}
