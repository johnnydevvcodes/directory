import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterexam/app_module.dart';
import 'package:flutterexam/features/dashboard/presentation/bloc/directory_cubit.dart';
import 'package:flutterexam/features/dashboard/presentation/screens/home_screen.dart';

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
