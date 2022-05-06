import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// A clickable horizontal card widget which displays an events details such as
/// title, location, date and time.
class HorizontalCard extends StatelessWidget {
  /// Creates a horizontal card widget.
  const HorizontalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              height: kDeviceDimensions.height * 0.18,
              width: kDeviceDimensions.width * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1650646269982-5bb3ac948d46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1528&q=80'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Wed, Apr 28 - 5:30 PM',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(5),
                const Text(
                  'International Band Music Festival',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(5),
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
                    const Text(
                      '+20 Going',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                const Gap(5),
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
          ],
        ),
      ),
    );
  }
}
