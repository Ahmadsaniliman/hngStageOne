import 'package:flutter/material.dart';
import 'package:simpleshoppingapp/Model/product.dart';
import 'package:simpleshoppingapp/Screens/home.dart';
import 'package:simpleshoppingapp/Screens/product.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                              (route) => false,
                            );
                          },
                          child: const Icon(Icons.arrow_back_ios)),
                      const Text(
                        'Products',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 750,
                  child: GridView.count(
                    // childAspectRatio: 0.95,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      ...List.generate(
                        otherProducts.length,
                        (index) => InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    Products(product: otherProducts[index]),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 120,
                                  // width: 10,
                                  child: Image.asset(
                                    otherProducts[index].image,
                                  ),
                                ),
                                Text(otherProducts[index].name),
                                Text(otherProducts[index].price),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
