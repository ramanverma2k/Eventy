import 'package:eventy_organizer/event/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:gap/gap.dart';

class CreateEventPage extends StatefulWidget {
  const CreateEventPage({Key? key}) : super(key: key);

  static final _formKey = GlobalKey<FormState>();

  static final _nameController = TextEditingController();
  static final _addressController = TextEditingController();
  static final _descriptionController = TextEditingController();

  @override
  State<CreateEventPage> createState() => _CreateEventPageState();
}

class _CreateEventPageState extends State<CreateEventPage> {
  String eventType = "Others";
  DateTime? startDate;
  DateTime? endDate;

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(
        value: "Science & Tech",
        child: Text("Science & Tech"),
      ),
      DropdownMenuItem(
        value: "Food & Drink",
        child: Text("Food & Drink"),
      ),
      DropdownMenuItem(
        value: "Others",
        child: Text("Others"),
      ),
    ];

    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: CreateEventPage._formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const Gap(20),
                  Text(
                    "Event name",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.apply(fontWeightDelta: 3),
                  ),
                  const Gap(10),
                  TextFormField(
                    controller: CreateEventPage._nameController,
                    validator: (value) {
                      if (value == null && value!.length < 5) {
                        return "Event name cannot be less than 5 letters";
                      }

                      return null;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                      labelText: "Event Title",
                    ),
                  ),
                  const Gap(20),
                  Text(
                    "Address",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.apply(fontWeightDelta: 3),
                  ),
                  const Gap(10),
                  TextFormField(
                    controller: CreateEventPage._addressController,
                    validator: (value) {
                      if (value == null && value!.isEmpty) {
                        return "Address cannot be empty";
                      }

                      return null;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                      labelText: "Aliganj, Lucknow.",
                    ),
                  ),
                  const Gap(20),
                  Text(
                    "Additional Information",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.apply(fontWeightDelta: 3),
                  ),
                  const Gap(10),
                  TextFormField(
                    controller: CreateEventPage._descriptionController,
                    validator: (value) {
                      if (value == null && value!.isEmpty) {
                        return "Event description cannot be empty";
                      }

                      return null;
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(),
                      labelText: "Description",
                    ),
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Event Type",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.apply(fontWeightDelta: 3),
                      ),
                      DropdownButton(
                        value: eventType,
                        items: dropdownItems,
                        onChanged: (String? value) {
                          setState(() {
                            eventType = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Start Date",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.apply(fontWeightDelta: 3),
                      ),
                      TextButton(
                        onPressed: () {
                          DatePicker.showDateTimePicker(
                            context,
                            showTitleActions: true,
                            minTime: DateTime.now(),
                            onConfirm: (date) {
                              setState(() {
                                startDate = date;
                              });
                            },
                            currentTime: DateTime.now(),
                          );
                        },
                        child: Text(
                          startDate == null
                              ? 'Pick'
                              : startDate!.toIso8601String(),
                          style: const TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "End Date",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.apply(fontWeightDelta: 3),
                      ),
                      TextButton(
                        onPressed: () {
                          DatePicker.showDateTimePicker(
                            context,
                            showTitleActions: true,
                            minTime: DateTime.now(),
                            onConfirm: (date) {
                              setState(() {
                                endDate = date;
                              });
                            },
                            currentTime: DateTime.now(),
                          );
                        },
                        child: Text(
                          endDate == null ? 'Pick' : endDate!.toIso8601String(),
                          style: const TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Location",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.apply(fontWeightDelta: 3),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Get my location',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  SizedBox(
                    height: 50,
                    width: double.maxFinite,
                    child: BlocListener<EventBloc, EventState>(
                      listener: (context, state) {
                        if (state is EventAdded) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(seconds: 2),
                              content: Text("Event Added!"),
                            ),
                          );
                        }
                      },
                      child: ElevatedButton(
                        onPressed: () {
                          if (CreateEventPage._formKey.currentState!
                              .validate()) {
                            context.read<EventBloc>().add(
                                  EventAdd(
                                    name: CreateEventPage._nameController.text
                                        .trim(),
                                    address: CreateEventPage
                                        ._addressController.text
                                        .trim(),
                                    description: CreateEventPage
                                        ._descriptionController.text
                                        .trim(),
                                    startDate: startDate!,
                                    endDate: endDate!,
                                    location: const {},
                                    image: "",
                                    bannerImage: "",
                                    typeName: eventType,
                                  ),
                                );
                          }
                        },
                        child: const Text('Create Event'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
