import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nepanikar/app/l10n/ext.dart';
import 'package:nepanikar/app/theme/sizes.dart';
import 'package:nepanikar/widgets/diary/diary_tile.dart';
import 'package:nepanikar/widgets/nepanikar_screen_wrapper.dart';

class MyRecordsDiariesListRoute extends GoRouteData {
  const MyRecordsDiariesListRoute();

  @override
  Widget build(BuildContext context) => const MyRecordsDiariesListScreen();
}

class MyRecordsDiariesListScreen extends StatelessWidget {
  const MyRecordsDiariesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return NepanikarScreenWrapper(
      appBarTitle: context.l10n.diary,
      // TODO: l10n
      appBarDescription:
          'Zapisujte si vaše dosažené výsledky a posuny. Můžete se kdykoliv k záznamům vrátit.',
      isModuleList: false,
      isCardStackLayout: true,
      expandToMaxScreenHeight: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
        child: const Icon(Icons.add),
      ),
      children: List.generate(
        10,
        (index) {
          final isLastItem = index == 9;

          return Padding(
            padding: EdgeInsets.only(
              top: NepanikarSizes.separatorHeight,
              bottom: isLastItem ? NepanikarSizes.fabBottomPadding : 0,
            ),
            child: DiaryTile(
              text: 'Záznam $index',
              description: 'Popis záznamu $index',
              onTap: () {},
            ),
          );
        },
      ).toList(),
    );
  }
}
