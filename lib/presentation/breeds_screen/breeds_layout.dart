import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_starter/generated/l10n.dart';
import 'package:solution_starter/presentation/breeds_screen/bloc/breeds_bloc.dart';
import 'package:solution_starter/widgets/organisms/home_list.dart';

class BreedsLayout extends StatefulWidget {
  const BreedsLayout({super.key});

  @override
  State<BreedsLayout> createState() => _BreedsLayoutState();
}

class _BreedsLayoutState extends State<BreedsLayout> {
  @override
  void initState() {
    super.initState();
    context.read<BreedsBloc>().add(const BreedsEvent.loaded());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).breed_list),
      ),
      body: Center(
        child: BlocConsumer<BreedsBloc, BreedsState>(
          listener: (BuildContext context, state) {
            state.mapOrNull(
              showInfo: (breedInfo) => null,// TODO(AdnriiD): implement item navigation)
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              initial: () =>
              const Center(
                child: Text('expectation'),
              ),
              loading: () =>
              const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (breeds) => DogBreedListWidget(breeds: breeds),
              error: (error) =>
                  Center(
                    child: Text('$error'),
                  ),
              orElse: () =>
              const Center(
                child: Text('text'),
              ),
            );
          },
        ),
      ),
    );
  }
}
