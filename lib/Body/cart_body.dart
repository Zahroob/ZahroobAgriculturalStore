import 'package:flutter/material.dart';
import 'package:zahroobstor/page/NameProduct.dart';
import 'package:zahroobstor/widget/HeartIconWidget.dart';
import 'package:zahroobstor/widget/ProductDiscount.dart';
import 'package:zahroobstor/widget/ProductImage.dart';
import 'package:zahroobstor/widget/QuantityCounter.dart';
import 'package:zahroobstor/widget/SmallOfferWidget.dart';
import 'package:zahroobstor/widget/TopBarWidget.dart';
import 'package:zahroobstor/widget/product_details/product_price.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              SizedBox(height: 30),
              TopBarWidget(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                title: 'السلة',
                colorText: const Color(0xFF000000),
                colorIcon: const Color(0xFF000000),
              ),
              SizedBox(height: 24),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Container(
                        height: 168,
                        width: 350,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(blurRadius: 3, color: Colors.black12),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              ProductImage(
                                height: 100,
                                width: 100,
                                imageproduct: 'assets/image/photoBromo.png',
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 16,
                                  right: 16,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    NameProduct(),
                                    ProductPrice(),
                                    Row(
                                      children: [
                                        ProductDiscount(),
                                        SizedBox(width: 8),
                                        SmallOfferWidget(),
                                      ],
                                    ),
                                    Text(
                                      'أصفر',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        HeartIconWidget(initialValue: false),
                                        SizedBox(width: 70),
                                        QuantityCounter(),
                                      ],
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
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
