
import 'dart:convert';
import '../service/card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/apiModel.dart';


class ProductionListScreen extends StatefulWidget{
  
  const ProductionListScreen({
    super.key,
  });

  @override
  State<ProductionListScreen> createState() => _ProductionListScreenState();
}


class _ProductionListScreenState extends State<ProductionListScreen> {

  List<Product> products= [];


  @override
  void initState(){
      super.initState();
      fetchProducts();
  }

  Future<void> fetchProducts() async{
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200){
      final List<dynamic> jsonData = json.decode(response.body);

      setState(() {
        products = jsonData.map((data) => Product.fromJson(data)).toList().cast<Product>();
      });

    } else {

    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Soko')
      ),


      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index){

          return ProductCard(product: products[index]);
        }
      ),
    );
  }
}