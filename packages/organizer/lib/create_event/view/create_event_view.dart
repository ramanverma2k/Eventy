import 'dart:io';

import 'package:date_time_picker/date_time_picker.dart';
import 'package:eventy_organizer/create_event/create_event.dart';
import 'package:eventy_organizer/utility/current_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class CreateEventView extends StatefulWidget {
  const CreateEventView({Key? key}) : super(key: key);

  @override
  State<CreateEventView> createState() => _CreateEventViewState();
}

class _CreateEventViewState extends State<CreateEventView> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  String? _category;
  String? _startDate;
  String? _endDate;
  File? _image;
  File? _banner;
  late Map<String, dynamic> _location;

  bool isEnabled = true;
  bool isLoading = false;

  final List<String> _categories = [
    'Industrial Engineering',
    'Automobile - Automotive Industry',
    'Home & Lifestyle',
    'Building & Construction',
    'Science & Tech',
    'Medical & Pharma',
    'Food & Drink',
    'Apparel & Clothing',
    'Electric & Electronics',
    'Building & Construction',
    'Business',
    'Community',
    'Power & Energy',
    'Fashion',
    'Others',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Event',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocListener<CreateEventBloc, CreateEventState>(
            listener: (context, state) {
              if (state.state == CreateEventStatus.creating) {
                setState(() {
                  isEnabled = false;
                  isLoading = true;
                });
              }

              if (state.state == CreateEventStatus.created) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Event successfully created'),
                    shape: StadiumBorder(),
                    width: 225,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }

              if (state.state == CreateEventStatus.error) {
                setState(() {
                  isEnabled = true;
                  isLoading = false;
                });

                const SnackBar(
                  content: Text('Error while creating your event.'),
                  shape: StadiumBorder(),
                  width: 250,
                  behavior: SnackBarBehavior.floating,
                );
              }
            },
            child: Column(
              children: [
                TextFormField(
                  enabled: isEnabled,
                  controller: _titleController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    labelText: 'Title',
                  ),
                ),
                const Gap(20),
                TextFormField(
                  enabled: isEnabled,
                  controller: _descriptionController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                  ),
                ),
                const Gap(20),
                Wrap(
                  runSpacing: 10,
                  children: [
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(),
                      ),
                      hint: const Text('Select a category'),
                      items: List.generate(
                        _categories.length,
                        (index) => DropdownMenuItem(
                          value: _categories[index],
                          child: Text(_categories[index]),
                        ),
                      ),
                      onChanged: (value) => setState(() {
                        _category = value;
                      }),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: isLoading
                            ? null
                            : () async {
                                final _imagePicker = ImagePicker();

                                final _ref = await _imagePicker.pickImage(
                                  source: ImageSource.gallery,
                                );

                                final image = File(_ref!.path);

                                setState(() {
                                  _image = image;
                                });
                              },
                        child: _image != null
                            ? Image.file(
                                _image!,
                              )
                            : Row(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.055,
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Icon(Icons.image),
                                  ),
                                  const Gap(10),
                                  const Text(
                                    'Add event photo',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5),
                          onTap: isLoading
                              ? null
                              : () async {
                                  final _imagePicker = ImagePicker();

                                  final _ref = await _imagePicker.pickImage(
                                    source: ImageSource.gallery,
                                  );

                                  final image = File(_ref!.path);

                                  setState(() {
                                    _banner = image;
                                  });
                                },
                          child: _banner != null
                              ? Image.file(
                                  _banner!,
                                )
                              : Row(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.055,
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Icon(Icons.image),
                                    ),
                                    const Gap(10),
                                    const Text(
                                      'Add banner photo',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: DateTimePicker(
                        enabled: isEnabled,
                        type: DateTimePickerType.dateTimeSeparate,
                        dateMask: 'd MMM, yyyy',
                        initialValue: DateTime.now().toString(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        icon: Container(
                          height: MediaQuery.of(context).size.height * 0.055,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.calendar_month),
                        ),
                        dateLabelText: 'Start Date',
                        timeLabelText: 'Hour',
                        onChanged: (val) {
                          setState(() {
                            _startDate = val;
                          });
                        },
                        onSaved: (val) {
                          setState(() {
                            _startDate = val;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: DateTimePicker(
                        enabled: isEnabled,
                        type: DateTimePickerType.dateTimeSeparate,
                        dateMask: 'd MMM, yyyy',
                        initialValue: DateTime.now().toString(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        icon: Container(
                          height: MediaQuery.of(context).size.height * 0.055,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(Icons.calendar_month),
                        ),
                        dateLabelText: 'End Date',
                        timeLabelText: 'Hour',
                        onChanged: (val) {
                          setState(() {
                            _endDate = val;
                          });
                        },
                        onSaved: (val) {
                          setState(() {
                            _endDate = val;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(5),
                        onTap: isLoading
                            ? null
                            : () async {
                                final position = await determinePosition();
                                final address = await addressFromCoordinates(
                                  position.latitude,
                                  position.longitude,
                                );

                                setState(() {
                                  _location = <String, dynamic>{
                                    'address': '${address.first.name},'
                                        '${address.first.subLocality},'
                                        '${address.first.locality},'
                                        ' ${address.first.country}',
                                    'lat': position.latitude,
                                    'lon': position.longitude,
                                  };
                                });
                              },
                        child: Row(
                          children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.055,
                              width: MediaQuery.of(context).size.width * 0.1,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(Icons.location_on),
                            ),
                            const Gap(10),
                            Text(
                              _location.isEmpty
                                  ? 'Add location'
                                  : '${_location['address']}',
                              style: const TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: isLoading
                      ? const Center(
                          child: CircularProgressIndicator.adaptive(),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            context.read<CreateEventBloc>().add(
                                  CreateEvent(
                                    title: _titleController.text.trim(),
                                    description:
                                        _descriptionController.text.trim(),
                                    category: _categories.indexOf(_category!),
                                    image: _image,
                                    bannerImage: _banner,
                                    location: _location,
                                    startDate: _startDate!,
                                    endDate: _endDate!,
                                  ),
                                );
                          },
                          child: const Text(
                            'Create',
                          ),
                        ),
                ),
                const Gap(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
