import 'package:flutter/material.dart';

class MostSoldProducts extends StatelessWidget {
  const MostSoldProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'name': 'رشاش ظهر يدوي',
        'details': 'سعة 20 لتر',
        'price': '1,250 ج.م',
        'image': 'assets/image/sprayer.png',
      },
      {
        'name': 'طلمبة مياه زراعية',
        'details': 'مقاس 2 بوصة',
        'price': 'اطلب السعر',
        'image': 'assets/image/water_pump.png',
      },
      {
        'name': 'خرطوم ري',
        'details': 'طول 50 متر',
        'price': '850 ج.م',
        'image': 'assets/image/irrigation_hose.png',
      },
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                // الانتقال لصفحة كل المنتجات
              },
              child: const Text(
                'عرض الكل',
                style: TextStyle(color: Color(0xFF156651)),
              ),
            ),
            const Text(
              'الأكثر مبيعًا',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ],
        ),

        const SizedBox(height: 8),

        SizedBox(
          height: 225,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final product = products[index];

              return SizedBox(
                width: 155,
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    // الانتقال لتفاصيل المنتج
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(16),
                            ),
                            child: Image.asset(
                              product['image']!,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (_, _, _) {
                                return Container(
                                  color: const Color(0xFFE4F0DF),
                                  child: const Center(
                                    child: Icon(
                                      Icons.agriculture_outlined,
                                      size: 45,
                                      color: Color(0xFF156651),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product['name']!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                product['details']!,
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(height: 7),
                              Text(
                                product['price']!,
                                style: const TextStyle(
                                  color: Color(0xFF156651),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
