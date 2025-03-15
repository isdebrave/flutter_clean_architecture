import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/domain/model/view_module_model.dart';

class TopLeft extends StatelessWidget {
  final ViewModuleModel model;

  const TopLeft({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(model.name),
    );
  }
}
