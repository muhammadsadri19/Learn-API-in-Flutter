import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api2Page extends StatefulWidget {
  const Api2Page({Key? key}) : super(key: key);

  @override
  _Api2PageState createState() => _Api2PageState();
}

//Cara untuk panggil API yang bersifat Array => Object
//https://jsonplaceholder.typicode.com/posts/
class _Api2PageState extends State<Api2Page> {
  List<dynamic> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text(
          'REST API 2',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            final title = user['name'];
            final subTitle = user['email'];
            final address = user['address']
                ['street']; //ini contoh ambil data didalam object data

            return ListTile(
                leading: CircleAvatar(
                  child: Text('${index + 1}'),
                ),
                title: Text(title),
                subtitle: Text(subTitle));
          }),
      floatingActionButton: FloatingActionButton(onPressed: fetchUsers),
    );
  }

  void fetchUsers() async {
    print('Fungsi telah dipanggil');
    const url = 'https://jsonplaceholder.typicode.com/users';
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      setState(() {
        users = data;
      });

//Data juga akan muncul di debug console
      for (final user in users) {
        final title = user['title'];
        print('Title : $title');
      }

      print('Fungsi fetch user berhasil');
    } else {
      //Pengecekan di debug console
      print('Error : ${response.statusCode}');
    }
  }
}
