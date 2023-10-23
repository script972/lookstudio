import 'package:flutter/material.dart';
import 'package:solution_starter/domain/entities/breed_info.dart';
import 'package:solution_starter/generated/assets/assets.gen.dart';

class BreedCellWidget extends StatelessWidget {
  const BreedCellWidget({super.key, required this.breed, required this.onContractClick});

  final BreedInfo breed;
  final Future<void> Function(BreedInfo) onContractClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onContractClick(breed),
      child: ListTile(
        title: Row(
          children: [
            Assets.images.icons.logo.image(width: 15, height: 15),
            const SizedBox(width: 15),
            Text(breed.nameFormatter)
          ],
        ),
      ),
    );
  }
}
