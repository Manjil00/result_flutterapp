import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_flutter_app/view/student_result.dart';
import 'package:result_flutter_app/view/student_view.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {

  @override
  Widget build(BuildContext context) {
    return  ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
           '/': (context) => const StudentView(),
          '/studentresult': (context) => const StudentResult(),
          },
      ),
    );
  }
}