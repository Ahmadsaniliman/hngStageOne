import 'package:flutter/material.dart';
import 'package:simpleshoppingapp/Functions/functions.dart';
import 'package:simpleshoppingapp/Model/product.dart';
import 'package:simpleshoppingapp/Screens/checkout.dart';
import 'package:simpleshoppingapp/Screens/home.dart';

class Products extends StatefulWidget {
  const Products({super.key, required this.product});

  final Product product;
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) {
                            return const HomePage();
                          },
                        ),
                        (route) => false,
                      );
                    },
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                  const Text(
                    'Product Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image.asset(widget.product.image),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    widget.product.price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 20),
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur. Vestibulum eget blandit mattis, Lorem ipsum dolor sit amet consectetur. Vestibulum eget blandit mattis,Lorem ipsum dolor sit amet consectetur. Vestibulum eget blandit mattis, Lorem ipsum dolor sit amet consectetur. Vestibulum eget blandit mattis,  Lorem ipsum dolor sit amet consectetur. Vestibulum eget blandit mattis,  Lorem ipsum dolor sit amet consectetur. Vestibulum eget blandit mattis,  Lorem ipsum dolor sit amet consectetur. Vestibulum eget blandit mattis,  Lorem ipsum dolor sit amet consectetur. Vestibulum eget blandit mattis,',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      final productt = Product(
                        image: widget.product.image,
                        id: widget.product.id,
                        name: widget.product.name,
                        price: widget.product.price,
                      );
                      ProductFuction().addProductToCheckOut(product: productt);
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => CheckOut(
                            product: productt,
                          ),
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
                          'Checkout',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
