import 'package:lesson5screen/baitap5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Product {
  final String title;
  final String image;
  final double price;
  final String description;

  Product(this.title, this.image, this.price, this.description);
}

late List<Product> productList = [
  Product(
      'Áo sơ mi',
      'https://4men.com.vn/images/thumbs/2022/02/ao-so-mi-oxford-tui-dap-asm075-mau-bo-16414-slide-products-620f06d9a2c7d.JPG',
      26.000,
      'Áo sơ mi trắng'),
  Product(
      'Áo Khoác Da',
      'https://4men.com.vn/images/thumbs/2022/02/ao-khoac-da-lon-tron-ak023-mau-xam-xanh-16437-slide-products-6216f5ca48bb2.JPG',
      24.000,
      'Áo khoác da siêu ấm'),
  Product(
      'Áo thun',
      'https://4men.com.vn/images/thumbs/2022/03/ao-thun-regular-phoi-mau-at068-mau-den-16652-slide-products-6242dbb65670b.JPG',
      25.000,
      'Áo thun trơn đẹp'),
];

class ProductList extends StatefulWidget {
  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text('MyShop'),
            actions: [
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
            ],
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ),
          body: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: (200 / 150)),
              itemCount: productList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductsDetail(productList[index]),
                        ),
                      );
                    },
                    child: Container(
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(productList[index].image,
                              fit: BoxFit.cover),
                          Positioned(
                            height: 40,
                            width: 210,
                            bottom: 0,
                            child: Container(
                              color: Colors.black.withOpacity(0.85),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border,
                                        color: Colors.purple,
                                      )),
                                  Text(
                                    productList[index].title,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.shopping_cart,
                                          color: Colors.purple)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}