import 'package:eventy_organizer/home/home.dart';
import 'package:eventy_organizer/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final filters = <String>[];

    return Row(
      children: [
        Flexible(
          child: TextFormField(
            controller: _searchController,
            decoration: InputDecoration(
              fillColor: Colors.grey,
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Search for music, events, sports',
              labelStyle: Theme.of(context).textTheme.bodyText2,
              prefixIcon: GestureDetector(
                onTap: () {
                  context.read<SearchBloc>().add(
                        SearchInitiated(
                          query: _searchController.text.trim(),
                          filters: filters,
                        ),
                      );

                  Navigator.push<void>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchView(),
                    ),
                  );
                },
                child: const Icon(Icons.search),
              ),
            ),
            onFieldSubmitted: (query) {
              context.read<SearchBloc>().add(
                    SearchInitiated(
                      query: _searchController.text.trim(),
                      filters: filters,
                    ),
                  );

              Navigator.push<void>(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchView(),
                ),
              );
            },
          ),
        ),
        IconButton(
          onPressed: () => showMaterialModalBottomSheet<Widget>(
            enableDrag: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: BottomModalSheet(filters: filters),
            ),
          ),
          icon: const Icon(Icons.sort_outlined),
        ),
      ],
    );
  }
}
