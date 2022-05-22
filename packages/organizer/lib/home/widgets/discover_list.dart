import 'package:database/database.dart';
import 'package:eventy_organizer/events/events.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DiscoverList extends StatelessWidget {
  const DiscoverList({Key? key, required this.data}) : super(key: key);

  final List<QueryGetPopularEvents$events> data;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => Navigator.push<void>(
          context,
          MaterialPageRoute(
            builder: (context) => EventsView(eventData: data[index]),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(data[index].image!),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const Gap(5),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text(
                data[index].name,
                style: Theme.of(context).textTheme.titleSmall,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
      separatorBuilder: (_, index) => const Gap(20),
      itemCount: data.length,
    );
  }
}
