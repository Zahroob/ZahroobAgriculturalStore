import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zahroobstor/widget/Profile_Image.dart';
import 'package:zahroobstor/widget/PromoCard.dart';
import 'package:zahroobstor/widget/search_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;

        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('تأكيد الخروج'),
              content: const Text('هل تريد الخروج من التطبيق؟'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('لا'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    SystemNavigator.pop();
                  },
                  child: const Text('نعم'),
                ),
              ],
            );
          },
        );
      },

      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_outlined),
                ),
                SizedBox(width: 160),
                Text(
                  'الرئيسية',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 40),
                ProfileImage(),
              ],
            ),
            SizedBox(height: 20),
            SearchField(),
            SizedBox(height: 20),
            PromoCard(backgroundImage: 'assets/image/ProfileBG.png'),
          ],
        ),
      ),
    );
  }
}
