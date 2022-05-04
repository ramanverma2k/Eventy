import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreateEventView extends StatelessWidget {
  const CreateEventView({Key? key}) : super(key: key);

  static final _titleController = TextEditingController();
  static final _descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Create New Event',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: kDeviceDimensions.width * 0.25,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Next',
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Event Title',
                ),
              ),
              const Gap(10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Event Description',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
