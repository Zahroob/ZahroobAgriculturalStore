import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: double.infinity,
        height: 199,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // الصورة كخلفية
            const Image(
              image: AssetImage('assets/image/bannarhomeview.png'),
              fit: BoxFit.cover,
            ),

            Container(
              decoration: BoxDecoration(
                // gradient: LinearGradient(
                //   colors: [
                //     Color(0xFF156651).withValues(alpha: 0.9),
                //     Color(0xFF53F3C8).withValues(alpha: 0.00000001),
                //   ],
                //   begin: Alignment.centerLeft,
                //   end: Alignment.center,
                // ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "لأرض أكثر نتاجا ",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "مع أفضل الاسمدة الزراعية ",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),
                  SizedBox(
                    height: 30,
                    width: 95,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "تسوق العرض",
                        style: TextStyle(fontSize: 9, color: Color(0xff156651)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
