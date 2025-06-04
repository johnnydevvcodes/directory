import 'package:flutterexam/core/error/app_error.dart';
import 'package:flutterexam/features/dashboard/domain/entities/directory_entity.dart';

sealed class DirectoryState {}

final class DirectoryLoading extends DirectoryState {}

final class DirectoryData extends DirectoryState {
  DirectoryData({required this.data});
  final DirectoryEntity data;
}

final class DirectoryError extends DirectoryState {
  DirectoryError({required this.error});
  final AppError error;
}
