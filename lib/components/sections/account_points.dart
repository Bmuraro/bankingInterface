import 'package:banking_interface/components/box_card.dart';
import 'package:flutter/material.dart';

import '../../theme/theme_colors.dart';
import '../color_dot.dart';
import '../content_division.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const BoxCard(boxContent: _AccountPointsContent()),
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text('Pontos totais:'),
      Padding(
        padding: const EdgeInsets.only(top: 11.0),
        child: Text(
          '3.000',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: ContentDivision(),
      ),
      Text(
        'Objetivos:',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: ThemeColors.accountPoints['delivery']),
            ),
            const Text('Entrega grátis: 15000pts'),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: ThemeColors.accountPoints['streaming']),
            ),
            const Text('1 mês de streaming: 30000pts'),
          ],
        ),
      )
    ]);
  }
}
