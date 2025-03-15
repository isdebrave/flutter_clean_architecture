import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/domain/model/view_module_model.dart';
import 'package:flutter_clean_architecture/presentation/view/view_module/view_module_list/bottom_right.dart';
import 'package:flutter_clean_architecture/presentation/view/view_module/view_module_list/custom_center.dart';
import 'package:flutter_clean_architecture/presentation/view/view_module/view_module_list/top_left.dart';

enum Modules { topLeft, center, bottomRight }

class ViewModuleFactory {
  ViewModuleFactory._();

  static final _instance = ViewModuleFactory._();

  factory ViewModuleFactory() {
    return _instance;
  }

  Widget toWidget(ViewModuleModel model, Modules viewType) {
    for (final module in Modules.values) {
      if (viewType == module) {
        return module.toWidget(model);
      }
    }

    return const SizedBox.shrink();
  }
}

extension ModulesExt on Modules {
  Widget toWidget(ViewModuleModel model) {
    switch (this) {
      case Modules.topLeft:
        return TopLeft(model: model);
      case Modules.center:
        return CustomCenter(model: model);
      case Modules.bottomRight:
        return BottomRight(model: model);
    }
  }
}
