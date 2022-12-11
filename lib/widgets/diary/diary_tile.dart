import 'package:flutter/material.dart';
import 'package:nepanikar/app/generated/assets.gen.dart';
import 'package:nepanikar/app/theme/fonts.dart';
import 'package:nepanikar/widgets/long_tile.dart';

class DiaryTile extends StatelessWidget {
  const DiaryTile({
    super.key,
    required this.text,
    required this.description,
    required this.onTap,
  });

  final String text;
  final String description;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    const textStyle = NepanikarFonts.bodyHeavy;

    return LongTile(
      image: Assets.illustrations.modules.myRecords.svg(),
      text: text,
      textTextStyle: textStyle.copyWith(fontSize: 12),
      description: description,
      descriptionTextStyle: textStyle.copyWith(fontWeight: FontWeight.w700),
      onTap: onTap,
    );
  }
}
