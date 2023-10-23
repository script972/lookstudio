import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_starter/domain/entities/breed_info.dart';
import 'package:solution_starter/generated/l10n.dart';
import 'package:solution_starter/presentation/breeds_screen/bloc/breeds_bloc.dart';
import 'package:solution_starter/widgets/organisms/home_list.dart';
import 'package:solution_starter/widgets/organisms/progress.dart';

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

  void showSnackBar(context, BreedInfo info) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(info.nameFormatter),
        duration: const Duration(milliseconds: 500),
      ),
    );
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
              showInfo: (breedInfo) =>
                  showSnackBar(context, breedInfo.breedInfo),
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              loading: () => const Center(child: CircleProgress()),
              loaded: (data) => DogBreedListWidget(
                breeds: data,
                onRefresh: () async {
                  context.read<BreedsBloc>().add(const BreedsEvent.refresh());
                },
                onLoading:  () async {
                  context.read<BreedsBloc>().add(const BreedsEvent.loading());
                },
                onContractClick: (breedInfo) async {
                  showSnackBar(context, breedInfo);
                },
              ),
              error: (error, data) => DogBreedListWidget(
                breeds: data,
                onRefresh: () async {
                  context.read<BreedsBloc>().add(const BreedsEvent.refresh());
                },
                onLoading:  () async {
                  context.read<BreedsBloc>().add(const BreedsEvent.loading());
                },
                onContractClick: (breedInfo) async {
                  showSnackBar(context, breedInfo);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
