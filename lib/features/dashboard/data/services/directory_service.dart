import 'dart:convert';
import 'dart:developer';

import 'package:directory/core/error/app_error.dart';
import 'package:directory/features/dashboard/data/dashboard_data.dart';
import 'package:directory/features/dashboard/data/models/directory_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:fpdart/fpdart.dart';

abstract class DirectoryService {
  Future<Either<AppError, DirectoryModel>> getDirectoryData();
}

class DirectoryServiceImpl implements DirectoryService {
  @override
  Future<Either<AppError, DirectoryModel>> getDirectoryData() async {
    try {
      final jsonString =
          await rootBundle.loadString('assets/data/my_directory.json');
      final Map<String, dynamic> jsonMap = json.decode(jsonString);
      final data = DirectoryModelMapper.fromMap(jsonMap);
      await Future.delayed(const Duration(seconds: 3));
      return right(data);
    } catch (e) {
      log(e.toString());
      return left(AppError(message: e.toString()));
    }
  }
}
