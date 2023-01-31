import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_starter/presentation/home_screen/bloc/home_bloc.dart';
import 'package:solution_starter/widgets/organisms/home_list.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _BreedsLayoutState();
}

class _BreedsLayoutState extends State<HomeLayout> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const HomeEvent.loaded());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Breed list"),
      ),
      body: Center(
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (BuildContext context, state) {
            state.mapOrNull(
                showInfo: (breedInfo) => print('todo'),//TODO (AdnriiD: implemen item navigation)
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
