import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:result_flutter_app/view/result_view.dart';
import 'package:result_flutter_app/view/result_show.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RESULT APP',
        initialRoute: '/',
        routes: {
          '/': (context) => const ResultView(),
          '/resultShowRoute': (context) => const ResultShowView()
        },
      ),
    ),
  );
}
