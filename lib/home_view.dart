import 'package:favouriteunfavouritepractice/favourite_view.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Map> products = [
    {
      'image': CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(
          'image1.jpg',
        ),
      ),
      'name': 'shirt',
      'price': 900,
      'isfavourite': false,
    },
    {
      'image': CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(
          'image2.jpeg',
        ),
      ),
      'name': 'jeans',
      'price': 1100,
      'isfavourite': false,
    },
    {
      'image': CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(
          'image3.jpg',
        ),
      ),
      'name': 'jacket',
      'price': 3500,
      'isfavourite': false,
    },
    {
      'image': CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(
          'image4.webp',
        ),
      ),
      'name': 'shoes',
      'price': 700,
      'isfavourite': false,
    },
    {
      'image': CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(
          'image5.jpg',
        ),
      ),
      'name': 'watch',
      'price': 2500,
      'isfavourite': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 210, 210, 210),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'Products',
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            IconButton(
                onPressed: () {
                  List fav = [];

                  products.forEach((element) {
                    if (element['isfavourite'] == true) {
                      return fav.add(element);
                    } else {
                      fav.remove(element);
                    }
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => favouriteproducts(f: fav)));
                },
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ))
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: products[index]['image'],
            title: Text(
              '${products[index]['name']}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'RS : ${products[index]['price']}',
            ),
            trailing: InkWell(
                onTap: () {
                  setState(() {
                    if (products[index]['isfavourite'] == false) {
                      products[index]['isfavourite'] = true;
                    } else {
                      products[index]['isfavourite'] = false;
                    }
                  });
                },
                child: Icon(
                  Icons.favorite,
                  color: products[index]['isfavourite'] == true
                      ? Colors.red
                      : Colors.black,
                )),
          );
        },
      ),
    );
  }
}
