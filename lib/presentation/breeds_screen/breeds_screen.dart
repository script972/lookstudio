import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:solution_starter/domain/use_cases/breeds_use_case.dart';
import 'package:solution_starter/presentation/breeds_screen/bloc/breeds_bloc.dart';
import 'package:solution_starter/presentation/breeds_screen/breeds_layout.dart';

class BreedsScreen extends StatelessWidget {
  const BreedsScreen({super.key});

  static const path = 'breeds_screen';

  @override
  Widget build(BuildContext context) {
    final useCase = Provider.of<BreedsUseCase>(context);
    return BlocProvider(
      create: (context) => BreedsBloc(
        useCase,
      ),
      child: const BreedsLayout(),
    );
  }
}
