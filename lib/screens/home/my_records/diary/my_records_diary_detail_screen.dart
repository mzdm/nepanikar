import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nepanikar/app/l10n/ext.dart';
import 'package:nepanikar/widgets/nepanikar_screen_wrapper.dart';

class MyRecordsDiaryDetailRoute extends GoRouteData {
  const MyRecordsDiaryDetailRoute();

  @override
  Widget build(BuildContext context) => const MyRecordsDiaryDetailScreen();
}

class MyRecordsDiaryDetailScreen extends StatelessWidget {
  const MyRecordsDiaryDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return NepanikarScreenWrapper(
      appBarTitle: context.l10n.diary,
      // TODO: l10n
      appBarDescription:
          'Zapisujte si vaše dosažené výsledky a posuny. Můžete se kdykoliv k záznamům vrátit.',
      isModuleList: false,
      isCardStackLayout: true,
      children: [
        Column(
          children: [
            Text('Hello wrold!'),
            Text('Hello wrold!'),
            Text('Hello wrold!'),
            Text('Hello wrold!'),
          ],
        ),
      ],
    );
  }
}
