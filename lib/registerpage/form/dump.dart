import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
            colors: [Color(0xffF3F4D7), Color(0xffDF6A26)],
            begin: FractionalOffset.centerLeft,
            end: FractionalOffset.centerRight,
            // stops: [0.5, 0.7],
            tileMode: TileMode.clamp),
      ),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              child: Column(
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
                      fillColor: const Color(0x55F7ECE1),
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
              ),
            ),

            const SizedBox(height: 15.0),
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
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email';
                }
                return null;
              },
            ),
            const SizedBox(height: 10.0),
            // * === Status ===
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
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter status';
                }
                return null;
              },
              onSaved: (value) => status = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Institute ===
            Text(
              'Institute:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Institute',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter institute';
                }
                return null;
              },
              onSaved: (value) => institution = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Nationality ===
            Text(
              'Nationality:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Nationality',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter nationality';
                }
                return null;
              },
              onSaved: (value) => nationality = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Age ===
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
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter age';
                }
                return null;
              },
              onSaved: (value) => age = int.parse(value!),
            ),
            const SizedBox(height: 10.0),
            // * === Contact Number ===
            Text(
              'Contact Number:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Contact Number',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter contact number';
                }
                return null;
              },
              onSaved: (value) => contactNumber = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Line ID ===
            Text(
              'Line ID:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Line ID',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Line ID';
                }
                return null;
              },
              onSaved: (value) => lineId = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Council 1 ===
            Text(
              'Council 1:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Council 1',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter council 1';
                }
                return null;
              },
              onSaved: (value) => councilOne = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Council 2 ===
            Text(
              'Council 2:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Council 2',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter council 2';
                }
                return null;
              },
              onSaved: (value) => councilTwo = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Council 3 ===
            Text(
              'Council 3:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Council 3',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter council 3';
                }
                return null;
              },
              onSaved: (value) => councilThree = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Council Country 1 ===
            Text(
              'Council Country 1:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Council Country 1',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter council country 1';
                }
                return null;
              },
              onSaved: (value) => councilCountryOne = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Council Country 2 ===
            Text(
              'Council Country 2:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Council Country 2',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter council country 2';
                }
                return null;
              },
              onSaved: (value) => councilCountryTwo = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Council Country 3 ===
            Text(
              'Council Country 3:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Council Country 3',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter council country 3';
                }
                return null;
              },
              onSaved: (value) => councilCountryThree = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Previous Experience ===
            Text(
              'Previous Experience:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Previous Experience',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter previous experience';
                }
                return null;
              },
              onSaved: (value) => previousExperience = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Dietary Restrictions ===
            Text(
              'Dietary Restrictions:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Dietary Restrictions',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter dietary restrictions';
                }
                return null;
              },
              onSaved: (value) => dietaryRestrictions = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Medical Conditions ===
            Text(
              'Medical Conditions:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Medical Conditions',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter medical conditions';
                }
                return null;
              },
              onSaved: (value) => medicalConditions = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Accomodation ===
            Text(
              'Accomodation:',
              textAlign: TextAlign.start,
              style: fontDisplay(context),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Accomodation',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                filled: true,
                fillColor: const Color(0x55F7ECE1),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter accomodation';
                }
                return null;
              },
              onSaved: (value) => accom = value!,
            ),
            const SizedBox(height: 10.0),
            // * === Proof of Transfer ===
          ],
        ),
      ),
    );
  }

  TextStyle? fontDisplay(BuildContext context) {
    return getValueForScreenType(
      context: context,
      mobile: Theme.of(context).textTheme.displaySmall?.apply(color: displayColor),
      tablet: Theme.of(context).textTheme.displaySmall?.apply(color: displayColor),
      desktop:
          Theme.of(context).textTheme.displaySmall?.copyWith(color: displayColor, fontSize: 25),
    );
  }
}
