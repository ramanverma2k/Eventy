import 'package:database/database.dart';
import 'package:eventy_organizer/events/events.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({Key? key, required this.data}) : super(key: key);

  final List<QueryGetUpcomingEvents$events> data;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) => GestureDetector(
        onTap: () => Navigator.push<void>(
          context,
          MaterialPageRoute(
            builder: (context) => EventsView(eventData: data[index]),
          ),
        ),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                image: DecorationImage(
                  image: NetworkImage(data[index].image!),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data[index].name,
                    style: Theme.of(context).textTheme.titleSmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(10),
                  Text(
                    data[index].start_date.toString(),
                    style: Theme.of(context).textTheme.displaySmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(10),
                  Text(
                    data[index].location!['address'].toString(),
                    style: Theme.of(context).textTheme.displaySmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      separatorBuilder: (_, index) => const Gap(20),
      itemCount: data.length,
      shrinkWrap: true,
    );
  }
}
