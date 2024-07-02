import 'package:flutter/material.dart';
import 'package:simpleshoppingapp/Functions/functions.dart';
import 'package:simpleshoppingapp/Model/product.dart';
import 'package:simpleshoppingapp/Screens/home.dart';
import 'package:simpleshoppingapp/Screens/order.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key, required this.product});

  final Product product;
  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    final productList = ProductFuction();
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const OrderPage(),
              ),
              (route) => false,
            );
          },
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Center(
              child: Text(
                'Order',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    const Text(
                      'Check Out',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 700,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: productList.productLength,
                    itemBuilder: (context, index) {
                      final producttt = productList.product(index: index);
                      return Column(
                        children: [
                          Dismissible(
                            key: ValueKey(producttt!.id),
                            onDismissed: (direction) {
                              productList.removeProductToCheckOut(
                                  product: producttt);
                            },
                            background: const Icon(
                              Icons.delete,
                              size: 70,
                            ),
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              padding: const EdgeInsets.all(10),
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    height: 110,
                                    width: 120,
                                    child: Image.asset(producttt!.image),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        producttt.name,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        producttt.price,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    'Slide to delete',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
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

void showDeleteDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Delete Product'),
      content: const Text('Are you sure you want tot delete it?'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('no')),
        TextButton(
          onPressed: () async {},
          child: const Text('yes'),
        ),
      ],
    ),
  );
}
