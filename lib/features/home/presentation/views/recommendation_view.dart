import 'package:flutter/material.dart';
import 'widgets/recommendation_view_body.dart';

class RecommendationView extends StatelessWidget {
  const RecommendationView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: RecommendationViewBody(),
      ),
    );
  }
}
