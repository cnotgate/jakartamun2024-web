import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:file_picker/file_picker.dart';

class FormSection extends StatefulWidget {
  const FormSection({super.key});

  @override
  State<FormSection> createState() => _FormSectionState();
}

class _FormSectionState extends State<FormSection> {
  final Color displayColor = const Color(0xffB73225);
  late String fullName, email, status, institution, nationality;
  late int age;
  late String contactNumber, lineId;
  String? councilOne, councilTwo, councilThree;
  String? councilCountryOne, councilCountryTwo, councilCountryThree;
  late String previousExperience, dietaryRestrictions, medicalConditions, accom;
  // File? proofOfTransfer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getValueForScreenType(
        context: context,
        mobile: MediaQuery.of(context).size.width * 0.9,
        desktop: MediaQuery.of(context).size.width * 0.75,
        tablet: MediaQuery.of(context).size.width * 0.75,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: displayColor),
        gradient: const LinearGradient(
            colors: [Color(0xffF3F4D7), Color(0xffFFDBA1)],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            // stops: [0.4, 0.7, 1],
            tileMode: TileMode.clamp),
      ),
      child: Form(
        child: Padding(
          padding: MediaQuery.of(context).size.width < 600
              ? const EdgeInsets.all(20.0) // Smaller padding for mobile screens
              : const EdgeInsets.symmetric(
                  horizontal: 70,
                  vertical: 30), // Larger padding for larger screens
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // * ===== Identity =====
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Identity',
                    style: headerDisplay(context),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              // * === Full Name & E-mail ===
              // * === Age & Status ===
              Builder(
                builder: (context) {
                  // Check if the screen width is less than a certain threshold, e.g., 600 pixels
                  bool isMobile = MediaQuery.of(context).size.width < 600;

                  // Based on the screen width, choose between a Row or a Column
                  return isMobile
                      ? Column(
                          children: [
                            buildNameField(context),
                            SizedBox(height: 10.0),
                            buildEmailField(context),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Container to hold the age field
                            Expanded(
                              child: buildNameField(context),
                            ),
                            SizedBox(width: 50.0), // Space between the fields
                            // Container to hold the status field
                            Expanded(
                              child: buildEmailField(context),
                            ),
                          ],
                        );
                },
              ),
              SizedBox(height: 20.0),

              // * === Nationality ===
              Text(
                'Nationality:',
                textAlign: TextAlign.start,
                style: fontDisplay(context),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nationality',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  fillColor: Color(0x55F7ECE1),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter nationality';
                  }
                  return null;
                },
                onSaved: (value) => nationality = value!,
              ),
              SizedBox(height: 10.0),
              // * === Institute ===
              Text(
                'Institute:',
                textAlign: TextAlign.start,
                style: fontDisplay(context),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Institute',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  fillColor: Color(0x55F7ECE1),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter institute';
                  }
                  return null;
                },
                onSaved: (value) => institution = value!,
              ),
              SizedBox(height: 10.0),
              // * === Age & Status ===
              Builder(
                builder: (context) {
                  // Check if the screen width is less than a certain threshold, e.g., 600 pixels
                  bool isMobile = MediaQuery.of(context).size.width < 600;

                  // Based on the screen width, choose between a Row or a Column
                  return isMobile
                      ? Column(
                          children: [
                            buildAgeField(context),
                            SizedBox(height: 10.0),
                            buildStatusField(context),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Container to hold the age field
                            Expanded(
                              child: buildAgeField(context),
                            ),
                            SizedBox(width: 50.0), // Space between the fields
                            // Container to hold the status field
                            Expanded(
                              child: buildStatusField(context),
                            ),
                          ],
                        );
                },
              ),
              SizedBox(height: 20.0),

              // * ===== Contact Address =====
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Contact Address',
                      style: headerDisplay(context),
                      textAlign: TextAlign.center,
                      softWrap: true, // Enable text wrapping
                      overflow: TextOverflow
                          .visible, // Ensure the text is visible even when wrapping
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              // * === Contact Number ===
              Text(
                'Contact Number:',
                textAlign: TextAlign.start,
                style: fontDisplay(context),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Contact Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  fillColor: Color(0x55F7ECE1),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter contact number';
                  }
                  return null;
                },
                onSaved: (value) => contactNumber = value!,
              ),
              SizedBox(height: 10.0),
              // * === Line ID ===
              Text(
                'Line ID:',
                textAlign: TextAlign.start,
                style: fontDisplay(context),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Line ID',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  fillColor: Color(0x55F7ECE1),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Line ID';
                  }
                  return null;
                },
                onSaved: (value) => lineId = value!,
              ),
              SizedBox(height: 20.0),
              // * ===== Council Preference =====
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Council Preference',
                      style: headerDisplay(context),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.0),
              // * === First Council ===
              Builder(
                builder: (context) {
                  // Check if the screen width is less than a certain threshold, e.g., 600 pixels
                  bool isMobile = MediaQuery.of(context).size.width < 600;

                  // Based on the screen width, choose between a Row or a Column
                  return isMobile
                      ? Column(
                          children: [
                            buildCouncilField(context, 1, councilOne),
                            SizedBox(height: 10.0),
                            buildCouncilCountryField(
                                context, 1, councilCountryOne),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Container to hold the age field
                            Expanded(
                              child: buildCouncilField(context, 1, councilOne),
                            ),
                            SizedBox(width: 50.0), // Space between the fields
                            // Container to hold the status field
                            Expanded(
                              child: buildCouncilCountryField(
                                  context, 1, councilCountryOne),
                            ),
                          ],
                        );
                },
              ),
              SizedBox(height: 10.0),
              // * === Second Council ===
              Builder(
                builder: (context) {
                  // Check if the screen width is less than a certain threshold, e.g., 600 pixels
                  bool isMobile = MediaQuery.of(context).size.width < 600;

                  // Based on the screen width, choose between a Row or a Column
                  return isMobile
                      ? Column(
                          children: [
                            buildCouncilField(context, 2, councilTwo),
                            SizedBox(height: 10.0),
                            buildCouncilCountryField(
                                context, 2, councilCountryTwo),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Container to hold the age field
                            Expanded(
                              child: buildCouncilField(context, 2, councilTwo),
                            ),
                            SizedBox(width: 50.0), // Space between the fields
                            // Container to hold the status field
                            Expanded(
                              child: buildCouncilCountryField(
                                  context, 2, councilCountryTwo),
                            ),
                          ],
                        );
                },
              ),
              SizedBox(height: 10.0),
              // * === Third Council ===
              Builder(
                builder: (context) {
                  // Check if the screen width is less than a certain threshold, e.g., 600 pixels
                  bool isMobile = MediaQuery.of(context).size.width < 600;

                  // Based on the screen width, choose between a Row or a Column
                  return isMobile
                      ? Column(
                          children: [
                            buildCouncilField(context, 3, councilThree),
                            SizedBox(height: 10.0),
                            buildCouncilCountryField(
                                context, 3, councilCountryThree),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Container to hold the age field
                            Expanded(
                              child:
                                  buildCouncilField(context, 3, councilThree),
                            ),
                            SizedBox(width: 50.0), // Space between the fields
                            // Container to hold the status field
                            Expanded(
                              child: buildCouncilCountryField(
                                  context, 3, councilCountryThree),
                            ),
                          ],
                        );
                },
              ),
              SizedBox(height: 20.0),
              // * ===== Additional Information =====
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Additional Information',
                      style: headerDisplay(context),
                      textAlign: TextAlign.center,
                      softWrap: true, // Enable text wrapping
                      overflow: TextOverflow
                          .visible, // Ensure the text is visible even when wrapping
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              // * === Previous Experience ===
              Text(
                'Previous Experience:',
                textAlign: TextAlign.start,
                style: fontDisplay(context),
              ),
              Container(
                height: 300,
                child: ClipRRect(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Describe your previous experience in MUN',
                      suffixText: 'If none type "-"',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      filled: true,
                      fillColor: Color(0x55F7ECE1),
                    ),
                    maxLines:
                        15, // Allows the text field to expand vertically as the user types
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter previous experience';
                      }
                      return null;
                    },
                    onSaved: (value) => previousExperience = value!,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              // * === Dietary Restrictions ===
              Text(
                'Dietary Restrictions:',
                textAlign: TextAlign.start,
                style: fontDisplay(context),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'If none type "-"',
                  // suffixText: 'If more than one, separate with commas',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  fillColor: Color(0x55F7ECE1),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter dietary restrictions';
                  }
                  return null;
                },
                onSaved: (value) => dietaryRestrictions = value!,
              ),
              SizedBox(height: 10.0),
              // * === Medical Conditions ===
              Text(
                'Medical Conditions:',
                textAlign: TextAlign.start,
                style: fontDisplay(context),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'If none type "-"',
                  // suffixText: 'Separate with commas',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  fillColor: Color(0x55F7ECE1),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter medical conditions';
                  }
                  return null;
                },
                onSaved: (value) => medicalConditions = value!,
              ),
              SizedBox(height: 10.0),
              // * === Accomodation ===
              Text(
                'Accomodation:',
                textAlign: TextAlign.start,
                style: fontDisplay(context),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Accomodation',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  fillColor: Color(0x55F7ECE1),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter accomodation';
                  }
                  return null;
                },
                onSaved: (value) => accom = value!,
              ),
              SizedBox(height: 20.0),
              // * === Proof of Transfer ===
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Payment',
                      style: headerDisplay(context),
                      textAlign: TextAlign.center,
                      softWrap: true, // Enable text wrapping
                      overflow: TextOverflow
                          .visible, // Ensure the text is visible even when wrapping
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Please make your payment through this bank account \n(BCA : 1234 5678 9123 4567)\n and upload your proof of transfer below.',
                      textAlign: TextAlign.center,
                      style: fontDisplay(context),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.file_upload),
                    label: Text('Upload Proof of Transfer'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange, // Background color
                      foregroundColor: Colors.white, // Text and icon color
                      elevation: 5, // Shadow elevation
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30), // Rounded corners
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15), // Button padding
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.0),
              Divider(
                color: Color(0xff6D261F),
                thickness: 1,
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Submit',
                          style: getValueForScreenType(
                            context: context,
                            mobile: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                    fontSize: 20, color: Color(0xffF8F9E7)),
                            tablet: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                    fontSize: 20, color: Color(0xffF8F9E7)),
                            desktop: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                    fontSize: 20, color: Color(0xffF8F9E7)),
                          )),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff6D261F), // Background color
                        foregroundColor: Colors.white, // Text and icon color
                        elevation: 5, // Shadow elevation
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(30), // Rounded corners
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10), // Button padding
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  TextStyle? fontDisplay(BuildContext context) {
    return getValueForScreenType(
      context: context,
      mobile: Theme.of(context).textTheme.bodyLarge?.apply(color: displayColor),
      tablet: Theme.of(context).textTheme.bodyLarge?.apply(color: displayColor),
      desktop:
          Theme.of(context).textTheme.bodyLarge?.apply(color: displayColor),
    );
  }

  TextStyle? headerDisplay(BuildContext context) {
    return getValueForScreenType(
      context: context,
      mobile:
          Theme.of(context).textTheme.displaySmall?.apply(color: displayColor),
      tablet:
          Theme.of(context).textTheme.displaySmall?.apply(color: displayColor),
      desktop:
          Theme.of(context).textTheme.displaySmall?.apply(color: displayColor),
    );
  }

  Widget buildAgeField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Age:',
          textAlign: TextAlign.start,
          style: fontDisplay(context),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Age',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            filled: true,
            fillColor: Color(0x55F7ECE1),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter age';
            }
            return null;
          },
          onSaved: (value) => age = int.parse(value!),
        ),
      ],
    );
  }

  Widget buildStatusField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Status:',
          textAlign: TextAlign.start,
          style: fontDisplay(context),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Status',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            filled: true,
            fillColor: Color(0x55F7ECE1),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter status';
            }
            return null;
          },
          onSaved: (value) => status = value!,
        ),
      ],
    );
  }

  Widget buildNameField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // * === Full Name ===
        Text(
          'Full Name:',
          textAlign: TextAlign.start,
          style: fontDisplay(context),
        ),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0x55F7ECE1),
            hintText: 'Full Name',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter full name';
            }
            return null;
          },
          onSaved: (value) => fullName = value!,
        ),
      ],
    );
  }

  Widget buildEmailField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // * === Email ===
        Text(
          'Email:',
          textAlign: TextAlign.start,
          style: fontDisplay(context),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            filled: true,
            fillColor: Color(0x55F7ECE1),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter email';
            }
            return null;
          },
          onSaved: (value) => email = value!,
        ),
      ],
    );
  }

  Widget buildCouncilField(
      BuildContext context, int councilNumber, String? council) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // * === Council ===
        Text(
          'Council $councilNumber:',
          textAlign: TextAlign.start,
          style: fontDisplay(context),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'WHO, ASEAN, Press Council, etc.',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            filled: true,
            fillColor: Color(0x55F7ECE1),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter council $councilNumber';
            }
            return null;
          },
          onSaved: (value) {
            switch (councilNumber) {
              case 1:
                councilOne = value ?? '';
                break;
              case 2:
                councilTwo = value ?? '';
                break;
              case 3:
                councilThree = value ?? '';
                break;
            }
          },
        ),
      ],
    );
  }

  Widget buildCouncilCountryField(
      BuildContext context, int councilNumber, String? council) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // * === Email ===
        Text(
          'Council Country $councilNumber:',
          textAlign: TextAlign.start,
          style: fontDisplay(context),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Council Country $councilNumber',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            filled: true,
            fillColor: Color(0x55F7ECE1),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter council country $councilNumber';
            }
            return null;
          },
          onSaved: (value) {
            switch (councilNumber) {
              case 1:
                councilCountryOne = value ?? '';
                break;
              case 2:
                councilCountryTwo = value ?? '';
                break;
              case 3:
                councilCountryThree = value ?? '';
                break;
            }
          },
        ),
      ],
    );
  }
}
