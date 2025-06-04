import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutterexam/core/error/app_error.dart';
import 'package:flutterexam/features/dashboard/data/models/directory_model.dart';
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
