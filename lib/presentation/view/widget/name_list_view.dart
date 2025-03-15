import 'package:flutter_clean_architecture/presentation/provider/test_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class NameListView extends ConsumerStatefulWidget {
  const NameListView({super.key});

  @override
  ConsumerState<NameListView> createState() => _NameListViewState();
}

class _NameListViewState extends ConsumerState<NameListView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(testProvider.notifier).getNames();
    });
  }

  @override
  Widget build(BuildContext context) {
    final testState = ref.watch(testProvider);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: testState.status == 'loading'
              ? const CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: testState.nameDataList.map((e) {
                    return Text(e.name);
                  }).toList(),
                ),
        ),
      ),
    );
  }
}
