import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:solution_starter/domain/use_cases/breeds_use_case.dart';
import 'package:solution_starter/presentation/home_screen/bloc/home_bloc.dart';
import 'package:solution_starter/presentation/home_screen/home_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const path = 'home_screen';

  @override
  Widget build(BuildContext context) {
    final useCase = Provider.of<BreedsUseCase>(context);
    return BlocProvider<HomeBloc>(
      create: (_) => HomeBloc(useCase),
      child: const HomeLayout(),
    );
  }
}
