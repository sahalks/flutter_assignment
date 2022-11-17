import 'package:flutter/material.dart';
import 'package:flutter_assignment/Pass%20Data%20Btw%20Screen/Dummy_Data.dart';

class ProductlistScreen extends StatelessWidget {

  void goToProduct(BuildContext context, id) {
    Navigator.pushNamed(context, 'product', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Product List Screen"),
      ),
      body:GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 250),
        children: dummyProducts.map((product) {
          return GestureDetector(onTap: (){goToProduct(context, product['id']);},
            child: Card(
              child: Column(
                children: [
                  Flexible(
                    flex: 4,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(product["image"]))),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(product["name"],
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text('₹${product["price"].toString()}',
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  )
                ],
              ),

            ),
          );
        }).toList() ,
      ),
    );
  }
}
