import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/domain/model/view_module_model.dart';

class BottomRight extends StatelessWidget {
  final ViewModuleModel model;

  const BottomRight({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Text(model.name),
    );
  }
}
