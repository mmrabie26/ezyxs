import 'package:ezyxs/feature/replicate/view/widgets/replicate_bottom_navigation.dart';
import 'package:ezyxs/feature/replicate/view/widgets/replicate_one/replicate_one_app_bar.dart';
import 'package:ezyxs/feature/replicate/view/widgets/replicate_one/replicate_one_body.dart';
import 'package:flutter/material.dart';

class ReplicateOneView extends StatelessWidget {
  const ReplicateOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReplicateOneAppBar(title: "Hillery Nevelin", imagePath: "assets/images/person.png"),
      body: ReplicatePageOneBody(),
      bottomNavigationBar: ReplicateBottomNavigation(),
    );
  }
}
