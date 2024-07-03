import 'package:flutter/material.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _radiobuttonstate();
}

// ignore: camel_case_types
class _radiobuttonstate extends State<register> {
  Gender? gender = Gender.male;
  bool isCheckedDeveloper = false;
  bool isCheckedDesigner = false;
  bool isCheckedTestor = false;

  String dropdownvalue = 'English';
  List<String> items = [
    'English',
    'Hindi',
    'Mlayalam',
    'Tamil',
    'Telugu',
    'Kannada'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 115, 3, 65),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 50, right: 50, top: 70, bottom: 40),
                  child: Text(
                    'REGISTRATION',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 250, 249, 249)),
                  ),
                ),
              ),
              txtfill(hintText: 'Enter your Name'),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: txtfill(hintText: 'Enter your E mail'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: txtfill(hintText: 'Enter your Phone no'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: txtfill(hintText: 'Enter username '),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: txtfill(hintText: 'Enter Password'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 120),
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, right: 50),
                        child: Text(
                          'Select Gender',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          'Male',
                          style: TextStyle(color: Colors.black),
                        ),
                        leading: Radio<Gender>(
                          value: Gender.male,
                          groupValue: gender,
                          onChanged: (Gender? value) {
                            setState(() {
                              gender = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          'Female',
                          style: TextStyle(color: Colors.black),
                        ),
                        leading: Radio<Gender>(
                          value: Gender.female,
                          groupValue: gender,
                          onChanged: (Gender? value) {
                            setState(() {
                              gender = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          'Other',
                          style: TextStyle(color: Colors.black),
                        ),
                        leading: Radio<Gender>(
                          value: Gender.other,
                          groupValue: gender,
                          onChanged: (Gender? value) {
                            setState(() {
                              gender = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 120),
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, right: 70),
                        child: Text(
                          'Select Skill',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      ListTile(
                        title: const Text('Developor'),
                        leading: Checkbox(
                          checkColor: Colors.white,
                          value: isCheckedDeveloper,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedDeveloper = value!;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Designer'),
                        leading: Checkbox(
                          checkColor: Colors.white,
                          value: isCheckedDesigner,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedDesigner = value!;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Tester'),
                        leading: Checkbox(
                          checkColor: Colors.white,
                          value: isCheckedTestor,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedTestor = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  right: 120,
                ),
                child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 20, right: 70, left: 20),
                          child: Text(
                            'Select Language',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: DropdownButton(
                              value: dropdownvalue,
                              icon: const Icon(Icons.arrow_drop_down),
                              items: items.map((String v) {
                                return DropdownMenuItem(
                                    value: v, child: Text(v));
                              }).toList(),
                              onChanged: (v) {
                                setState(() {
                                  dropdownvalue = v ?? ' No Value';
                                });
                              }),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)),
                  onPressed: () {},
                  child: const Text('SUBMIT',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 115, 3, 65))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextField txtfill({required var hintText}) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: hintText),
    );
  }
}

enum Gender { male, female, other }
