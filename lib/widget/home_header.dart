import 'package:flutter/material.dart';
import 'package:zahroobstor/widget/search_field.dart';

class HomeHeader  extends StatelessWidget {
  const HomeHeader ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.green),
            ),
        
            const Spacer(),
            Image.asset(
              'assets/image/zahroob_store_icon_256.png',
              width: 100,
              height: 100,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
                color: Colors.green,
              ),
            ),
          ],
        ),
        
        SearchField(),
      ],
    );
  }
}
