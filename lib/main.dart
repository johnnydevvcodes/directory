import 'package:directory/app_module.dart';
import 'package:directory/features/dashboard/presentation/dashboard_presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(const DirectoryApp());
}

class DirectoryApp extends StatelessWidget {
  const DirectoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ModularApp(
      module: AppModule(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => Modular.get<DirectoryCubit>()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
