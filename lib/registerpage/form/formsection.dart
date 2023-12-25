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
  late String councilOne, councilTwo, councilThree;
  late String councilCountryOne, councilCountryTwo, councilCountryThree;
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
            colors: [Color(0xbbF3F4D7), Color(0xffDF6A26), Color(0xbbE23F7E)],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.2, 0.8, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Form(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 50.0, right: 50, top: 40, bottom: 40),
          child: Column(
            children: [
              // * === Full Name ===
              Text(
                'Full Name',
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter full name';
                  }
                  return null;
                },
                onSaved: (value) => fullName = value!,
              ),
              SizedBox(height: 20.0),
              // * === Email ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0),
              // * === Status ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Status',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter status';
                  }
                  return null;
                },
                onSaved: (value) => status = value!,
              ),
              SizedBox(height: 10.0),
              // * === Institute ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Institute',
                  border: OutlineInputBorder(),
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
              // * === Nationality ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nationality',
                  border: OutlineInputBorder(),
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
              // * === Age ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Age',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter age';
                  }
                  return null;
                },
                onSaved: (value) => age = int.parse(value!),
              ),
              SizedBox(height: 10.0),
              // * === Contact Number ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Contact Number',
                  border: OutlineInputBorder(),
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
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Line ID',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Line ID';
                  }
                  return null;
                },
                onSaved: (value) => lineId = value!,
              ),
              SizedBox(height: 10.0),
              // * === Council 1 ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Council 1',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter council 1';
                  }
                  return null;
                },
                onSaved: (value) => councilOne = value!,
              ),
              SizedBox(height: 10.0),
              // * === Council 2 ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Council 2',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter council 2';
                  }
                  return null;
                },
                onSaved: (value) => councilTwo = value!,
              ),
              SizedBox(height: 10.0),
              // * === Council 3 ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Council 3',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter council 3';
                  }
                  return null;
                },
                onSaved: (value) => councilThree = value!,
              ),
              SizedBox(height: 10.0),
              // * === Council Country 1 ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Council Country 1',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter council country 1';
                  }
                  return null;
                },
                onSaved: (value) => councilCountryOne = value!,
              ),
              SizedBox(height: 10.0),
              // * === Council Country 2 ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Council Country 2',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter council country 2';
                  }
                  return null;
                },
                onSaved: (value) => councilCountryTwo = value!,
              ),
              SizedBox(height: 10.0),
              // * === Council Country 3 ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Council Country 3',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter council country 3';
                  }
                  return null;
                },
                onSaved: (value) => councilCountryThree = value!,
              ),
              SizedBox(height: 10.0),
              // * === Previous Experience ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Previous Experience',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter previous experience';
                  }
                  return null;
                },
                onSaved: (value) => previousExperience = value!,
              ),
              SizedBox(height: 10.0),
              // * === Dietary Restrictions ===
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Dietary Restrictions',
                  border: OutlineInputBorder(),
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
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Medical Conditions',
                  border: OutlineInputBorder(),
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
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Accomodation',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter accomodation';
                  }
                  return null;
                },
                onSaved: (value) => accom = value!,
              ),
              SizedBox(height: 10.0),
              // * === Proof of Transfer ===
            ],
          ),
        ),
      ),
    );
  }
}
