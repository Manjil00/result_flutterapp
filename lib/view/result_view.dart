import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResultView extends ConsumerStatefulWidget {
  const ResultView({Key? key}) : super(key: key);

  @override
  _ResultViewState createState() => _ResultViewState();
}

class _ResultViewState extends ConsumerState<ResultView> {
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final marksController = TextEditingController();
  String? selectedOption;
  List<String> options = [
    'Mobile Application',
    'Web API',
    'Design Thinking',
    'Individual Project'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result Checker'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // FName
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: fnameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter First Name:',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter First Name';
                  }
                  return null;
                },
              ),
              // LNAME
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: lnameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter Last Name:',
                  labelText: 'Last Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Last Name';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              // Dropdown
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButtonFormField<String>(
                  value: selectedOption,
                  items: options.map((String option) {
                    return DropdownMenuItem<String>(
                      value: option,
                      child: Text(option),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: 'Select an option',
                  ),
                ),
              ),
              //Marks
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: marksController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter marks:',
                  labelText: 'Marks',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your marks !';
                  }
                  return null;
                },
              ),
              //Button
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, '/');
                      });
                    },
                    child: const Text('ADD MARKS'),
                  ),
                ),
              ),
              //Button2
              //Button
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pushNamed(context, '/resultShowRoute');
                      });
                    },
                    child: const Text('Check marks'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
