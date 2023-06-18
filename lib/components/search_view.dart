import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: MasonryGridView.builder(
        itemCount: 10,
        physics: const AlwaysScrollableScrollPhysics(),
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.asset('lib/images/image${index + 1}.jpg'),
            ),
      ),
    );
  }
}
