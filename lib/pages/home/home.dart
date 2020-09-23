import 'dart:convert';

import 'package:ecom/providers/models/category.dart';
import 'package:flutter/material.dart';
import 'package:ecom/constants/config.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
 bool isloading = false;
  Category  category1;
  categories() async {
  setState(() {
    isloading = true;
  });
  var res = await http.get(ECOMConfig.url+ECOMConfig.cat_list, headers : {"Authorization": ECOMConfig.accessToken});
 
  var decoded = jsonDecode(res.body);
  var category1 = Category.fromJson(decoded);
  setState(() {
    isloading = false;
  });
  }
  
  @override
  void initState() {
    categories();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text('my first app')),
    body: isloading ? Center(child: CircularProgressIndicator(),) : 
    ListView.separated(
                itemCount:category1.childrenData.length,
               separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${category1.childrenData[index].name}'),
                 );
                },
    )
    );          
  }
}
