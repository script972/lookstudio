import 'package:flutter/material.dart';
import 'package:solution_starter/domain/entities/breed_info.dart';
import 'package:solution_starter/widgets/molecules/breed_cell.dart';

class DogBreedListWidget extends StatelessWidget {
  const DogBreedListWidget({super.key, required this.breeds});

  final List<BreedInfo> breeds;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView.builder(
        itemCount: breeds.length,
        itemBuilder: (context, index) {
          final breed = breeds[index];
          return BreedCellWidget(breed: breed);
        },
      ),
    );
  }
}
