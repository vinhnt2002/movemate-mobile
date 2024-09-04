// promotion_list.dart

import 'package:flutter/material.dart';
import 'package:movemate/utils/commons/widgets/promotion_layout/widget/promotion_card.dart';

class PromotionList extends StatelessWidget {
  const PromotionList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        PromotionCard(
          title: 'up to',
          discount: '50% Off',
          description: 'On domestic flights',
          code: 'DOMESTIC50',
          imagePath: 'assets/images/promotion/Ellipse171.png',
          bgcolor: Colors.deepOrangeAccent,
        ),
        SizedBox(height: 8),
        PromotionCard(
          title: 'Cashback up to',
          discount: '30%',
          description: 'On domestic flights',
          code: 'CASHBACK30',
          imagePath: 'assets/images/promotion/Ellipse171.png',
          bgcolor: Colors.tealAccent,
        ),
        SizedBox(height: 8),
        PromotionCard(
          title: 'Cashback up to',
          discount: '30%',
          description: 'On bus and travels',
          code: 'TRAVELBACK',
          imagePath: 'assets/images/promotion/Ellipse171.png',
          bgcolor: Colors.deepPurple,
        ),
        SizedBox(height: 8),
        PromotionCard(
          title: 'Cashback up to',
          discount: '30%',
          description: 'On bus and travels',
          code: 'TRAVELBACK',
          imagePath: 'assets/images/promotion/Ellipse171.png',
          bgcolor: Colors.lightGreenAccent,
        ),
      ],
    );
  }
}
