import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResultShowView extends ConsumerStatefulWidget {
  const ResultShowView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ResultShowViewState();
}

class _ResultShowViewState extends ConsumerState<ResultShowView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result View'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              // FName
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
