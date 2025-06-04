import 'package:directory/core/domain/base_usecase.dart';
import 'package:directory/core/error/app_error.dart';
import 'package:directory/features/dashboard/domain/dashboard_domain.dart';
import 'package:fpdart/fpdart.dart';

class GetDirectoryUseCase extends BaseUseCase<DirectoryEntity, Unit> {
  final DirectoryRepository repository;

  GetDirectoryUseCase(this.repository);

  @override
  Future<Either<AppError, DirectoryEntity>> call([params]) {
    return repository.getDirectory();
  }
}
