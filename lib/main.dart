import 'package:flutter/material.dart';

import 'doc_doc_body.dart';

void main() {
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
