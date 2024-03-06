import 'package:doc_doc_app/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/service_locator.dart';
import 'doc_doc_body.dart';

void main() {
  setupServiceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(
    const DocDocApp(),
  );
}

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const DocDocBody();
  }
}
