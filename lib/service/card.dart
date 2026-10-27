
import 'package:flutter/material.dart';
import '../model/apiModel.dart';  
import 'package:cached_network_image/cached_network_image.dart';

// import '../view/screen.dart';


class ProductCard extends StatelessWidget{
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context){

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:[
            AspectRatio(
              aspectRatio:1,
              child: CachedNetworkImage(
                imageUrl: product.image,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title:  Text(product.title),
              subtitle: Text('${product.price} \$'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: Colors.blue,),
                  Text('$product.rating')
                ]
              )
            )
          ]
        ),
      ),
    );
  }
}