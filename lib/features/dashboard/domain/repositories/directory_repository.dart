import 'package:directory/core/error/app_error.dart';
import 'package:directory/features/dashboard/domain/dashboard_domain.dart';
import 'package:directory/features/dashboard/domain/entities/directory_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class DirectoryRepository {
  Future<Either<AppError, DirectoryEntity>> getDirectory();
}
