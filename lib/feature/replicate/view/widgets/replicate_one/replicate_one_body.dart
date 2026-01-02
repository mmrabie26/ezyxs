import 'package:ezyxs/feature/replicate/view/widgets/replicate_one/replicate_filters.dart';
import 'package:ezyxs/feature/replicate/view/widgets/replicate_one/replicate_one_list.dart';
import 'package:ezyxs/feature/replicate/view/widgets/replicate_one/replicate_one_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReplicatePageOneBody extends StatelessWidget {
  const ReplicatePageOneBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ReplicateOneStack(),
            const SizedBox(height: 10,),
            ReplicateFiltersWidget(),
            const SizedBox(height: 10,),
            const ReplicateOneList(),
          ],
        ),
      ),
    );
  }
}
