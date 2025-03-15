import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/domain/model/view_module_model.dart';

class CustomCenter extends StatelessWidget {
  final ViewModuleModel model;

  const CustomCenter({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Align(child: Text(model.name));
  }
}
