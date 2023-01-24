import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test1/material_new_order/compronan.dart';
import 'models_provider_category.dart';

class Categories with ChangeNotifier{
final List<ListCategory> _Categories = [
    ListCategory(Categoryname:'FOOD',Image: 'https://cdn-icons-png.flaticon.com/512/3075/3075977.png',
      SubCateName1: [
        SubCategory( SubCateName:'ENTRÉE',ItemCategory:[
          ProductData(name: 'Pad Kapao',price: 150.2,image: 'https://img.wongnai.com/p/1968x0/2020/08/23/db92cec979e14c21804c942a13bea2a2.jpg'),
          ProductData(name: 'ITEM NAME',price: 130.2,image: 'https://th.bing.com/th/id/R.785308f44240fece250eced33190583a?rik=EWmmLOq2jXcd5Q&pid=ImgRaw&r=0'),
          ProductData(name: 'Pad Thai',price: 120.2,image: 'https://th.bing.com/th/id/OIP.Bgt6Ng308k6fqvjOGXC5rwHaE7?pid=ImgDet&rs=1'),
        ] ),
        
      ],
    ),

    ListCategory(Categoryname:'DRINK',Image: 'https://cdn-icons-png.flaticon.com/512/3075/3075977.png',
      SubCateName1: [
        SubCategory( SubCateName:'Milk',ItemCategory:[
          ProductData(name: 'Milk Tea',price: 150.2,image: 'https://th.bing.com/th/id/R.c56e8a02e3e91b6034e809b82087e737?rik=cqXUCgXebBptRw&riu=http%3a%2f%2ffizzifood.com%2fwp-content%2fuploads%2f2018%2f08%2fIMG_20180816_200236.jpg&ehk=8BUIpz0ricL5Et%2fkqu3MbOzDrsV8qutnlwDlNYx5Ces%3d&risl=&pid=ImgRaw&r=0'),
          ProductData(name: 'Milk Chocolate',price: 130.2,image: 'https://th.bing.com/th/id/OIP.ipZnkwpia_JvGPkxAs6xYgHaE7?pid=ImgDet&rs=1'),
          ProductData(name: 'Milk Original',price: 120.2,image: 'https://th.bing.com/th/id/R.7f21b65a0368e7cdb8e3099da2cab76b?rik=%2b3xZ%2bqa%2b1qkOTg&riu=http%3a%2f%2fupload.wikimedia.org%2fwikipedia%2fcommons%2f2%2f28%2fMilk_001.JPG&ehk=mHEleILeSdGCe1hg8D8VCiT30tR%2fJdCI8qA1yhFqfxI%3d&risl=&pid=ImgRaw&r=0'),
        ] ),
        SubCategory( SubCateName:'Soda',ItemCategory:[
          ProductData(name: 'Coca-Cola',price: 77.5,image: 'https://th.bing.com/th/id/R.523cd96db39843b0715faad16c718121?rik=ZLlYb%2bBVbVwXcQ&riu=http%3a%2f%2fdl2jx7zfbtwvr.cloudfront.net%2fproduct_largeimages%2fsoft7010_1.jpg&ehk=PQoGnMPhl2PSsrJP0MBDHg%2f3zufVaFN2cM6mPBUkczc%3d&risl=&pid=ImgRaw&r=0'),
          ProductData(name: 'Pepsi',price: 30.7,image: 'https://th.bing.com/th/id/OIP.WJPlX8l3J1bXtKlvaTNKQwHaOJ?pid=ImgDet&rs=1'),
          ProductData(name: 'Red Soda',price: 35.5,image: 'https://th.bing.com/th/id/R.a602318b7af6f08cd8f31341dce1f482?rik=tNRltQezU4%2fiBA&pid=ImgRaw&r=0'),
        ] ),
        SubCategory( SubCateName:'Spakling',ItemCategory:[
          ProductData(name: 'ITEM NAME3',price: 97.5,image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg'),
          ProductData(name: 'ITEM NAME3',price: 80.7,image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg'),
          ProductData(name: 'ITEM NAME3',price: 45.5,image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg'),
        ] )
      ],
    ),
    
    
    ];

  List<ListCategory> get categories {
    return [..._Categories];
  }

}