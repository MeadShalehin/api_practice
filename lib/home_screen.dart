import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'Models/PostModel.dart';

class HomeScreen extends StatelessWidget {


  List<PostModel> postList = [];


  Future<List<PostModel>> getPostApi () async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200) {
      postList.clear();
      for (Map i in data) {
        postList.add(PostModel.fromJson(i));
      }
      return postList;
    }else {
      return postList;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("Home",
            style: TextStyle(color: Colors.white,
               fontWeight: FontWeight.bold,),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(

          children: [
            Expanded(
              child: FutureBuilder(
                future: getPostApi(),
                builder: (context, snapshot){
                  if(!snapshot.hasData){
                   return Text('Loading');
                   } else {
                    return ListView.builder(
                          itemCount: postList.length,
                          itemBuilder: (context, index){
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Title: ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,),),
                              Text(postList[index].title.toString()),
                              SizedBox(height: 8),
                              Text('Description :' , style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), ),
                              SizedBox(height: 8),
                              Text('Description\n' +postList[index].body.toString())
                            ],
                          ),
                        ),
                      );
                     });
                    }
                  },
              
              ),
            )
          ],
        )
    );
  }
}
