import 'package:flutter_clean_architecture/presentation/provider/test_provider.dart';
import 'package:flutter_clean_architecture/presentation/view/view_module/view_module_factory.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class FruitView extends ConsumerStatefulWidget {
  final Modules viewType;

  const FruitView({super.key, required this.viewType});

  @override
  ConsumerState<FruitView> createState() => _FruitViewState();
}

class _FruitViewState extends ConsumerState<FruitView> {
  final moduleFactory = ViewModuleFactory();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(testProvider.notifier).getFruits();
    });
  }

  @override
  Widget build(BuildContext context) {
    final testState = ref.watch(testProvider);

    return SafeArea(
      child: Scaffold(
        body: testState.status == 'loading'
            ? const Center(child: CircularProgressIndicator())
            : moduleFactory.toWidget(testState.fruitData, widget.viewType),
      ),
    );
  }
}
