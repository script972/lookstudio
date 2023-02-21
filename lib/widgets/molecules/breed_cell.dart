import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_starter/domain/entities/breed_info.dart';
import 'package:solution_starter/generated/assets/assets.gen.dart';
import 'package:solution_starter/generated/assets/fonts.gen.dart';
import 'package:solution_starter/presentation/breeds_screen/bloc/breeds_bloc.dart';

class BreedCellWidget extends StatelessWidget {
  const BreedCellWidget({super.key, required this.breed});

  final BreedInfo breed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<BreedsBloc>().add(BreedsEvent.showInfo(breedInfo: breed)),
        child: ListTile(
          title: Row(
            children: [
              Assets.images.icons.dogIcon.image(width: 15, height: 15),
              const SizedBox(
                width: 15,
              ),
              Text(
                breed.nameFormatter,
                style: const TextStyle(fontFamily: FontFamily.roboto),
              )
            ],
          ),
        ),
    );
  }
}
