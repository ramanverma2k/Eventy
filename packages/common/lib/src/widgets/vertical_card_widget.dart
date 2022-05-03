import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// A clickable vertical card widget which displays an events details such as
/// title, location, date, number of people attending the event
/// and a button to bookmark the event.
class VerticalCard extends StatelessWidget {
  /// Creates a vertical card widget.
  const VerticalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: kDeviceDimensions.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1650646269982-5bb3ac948d46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1528&q=80'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        width: kDeviceDimensions.width * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white.withOpacity(0.75),
                        ),
                        child: Center(
                          child: Column(
                            children: const [
                              Text(
                                '10',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'June',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white.withOpacity(0.75),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Gap(10),
            const Text(
              'International Band Music Festival',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Gap(10),
            Row(
              children: [
                Stack(
                  children: const [
                    CircleAvatar(
                      maxRadius: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: CircleAvatar(
                        maxRadius: 15,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: CircleAvatar(
                        maxRadius: 15,
                      ),
                    ),
                  ],
                ),
                const Gap(5),
                Text(
                  '+20 Going',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.blue.shade900,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
            const Gap(10),
            Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                Gap(5),
                Text(
                  '36 Guild Street London, UK',
                  style: TextStyle(
                    color: Colors.grey,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
