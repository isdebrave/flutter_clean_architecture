import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/view/view_module/view_module_factory.dart';
import 'package:flutter_clean_architecture/presentation/view/widget/animal_view.dart';
import 'package:flutter_clean_architecture/presentation/view/widget/fruit_view.dart';
import 'package:flutter_clean_architecture/presentation/view/widget/name_list_view.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => const FruitView(viewType: Modules.center),
              ),
            );
          },
          child: const Text('센터 과일 버튼'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => const FruitView(viewType: Modules.topLeft),
              ),
            );
          },
          child: const Text('좌상단 과일 버튼'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => const AnimalView(viewType: Modules.center),
              ),
            );
          },
          child: const Text('센터 동물 버튼'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) =>
                    const AnimalView(viewType: Modules.bottomRight),
              ),
            );
          },
          child: const Text('우하단 동물 버튼'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (ctx) => const NameListView()),
            );
          },
          child: const Text('이름 버튼'),
        ),
      ],
    );
  }
}
