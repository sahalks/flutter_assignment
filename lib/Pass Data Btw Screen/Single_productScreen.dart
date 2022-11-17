import 'package:flutter/material.dart';
import 'package:flutter_assignment/Pass%20Data%20Btw%20Screen/Dummy_Data.dart';

class SingleproductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    // * finding product from the data using the passed arguement(id)
    final product = dummyProducts.firstWhere(
      (element) => element["id"] == id,
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(product["name"]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: double.infinity,
                height: 300,
                child: Image.network(
                  product["image"],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(product["name"], style: const TextStyle(fontSize: 20)),
            const SizedBox(
              height: 10,
            ),
            Text("₹${product["price"]}",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Description',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child:
                  Text(product["desc"], style: const TextStyle(fontSize: 20)),
            )
          ],
        ),
      ),
    );
  }
}
