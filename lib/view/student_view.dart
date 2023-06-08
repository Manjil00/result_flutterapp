import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/student.dart';
import '../view_model/student_viewmodel.dart';

class StudentView extends ConsumerStatefulWidget {
  const StudentView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StudentViewState();
}

class _StudentViewState extends ConsumerState<StudentView> {
  String? selectedModule;
  List<String> modules = [
    "Mobile Application",
    "INDIVIDUAL Project",
    "Web API",
    "Design Thinking",
  ];

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final markController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var studentState = ref.watch(studentViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("RESULT"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: firstNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("First Name")),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: lastNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Last Name")),
              ),
              const SizedBox(
                height: 20,
              ),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: 'Modules',
                  border: OutlineInputBorder(),
                ),
                items: modules
                    .map(
                      (module) => DropdownMenuItem(
                        value: module,
                        child: Text(module),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedModule = value;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: markController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Marks")),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Student student = Student(
                      fname: firstNameController.text.trim(),
                      lname: lastNameController.text.trim(),
                      mark: markController.text.trim());

                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Added Successfully"),
                    backgroundColor: Colors.green,
                  ));
                  ref
                      .read(studentViewModelProvider.notifier)
                      .addStudent(student);
                },
                child: const Text("ADD"),
              ),
              studentState.students.isNotEmpty
                  ? const Text("DATA")
                  : const Text("NO DATA"),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/studentresult');
                  },
                  child: const Text('View Result'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
