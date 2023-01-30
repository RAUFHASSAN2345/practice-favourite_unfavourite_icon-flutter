import 'package:flutter/material.dart';

class favouriteproducts extends StatelessWidget {
  List f;

  favouriteproducts({super.key, required this.f});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Favourite Product')),
      ),
      body: ListView.builder(
          itemCount: f.length,
          itemBuilder: (context, ind) {
            return ListTile(
              leading: f[ind]['image'],
              title: Text(
                f[ind]['name'],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'RS : ${f[ind]['price']}',
              ),
            );
          }),
    );
  }
}
