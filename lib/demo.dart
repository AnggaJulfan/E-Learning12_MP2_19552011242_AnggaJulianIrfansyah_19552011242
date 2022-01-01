import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phonebook'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Nomor Hp :',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Nama      :',
              ),
            ),
            SizedBox(height: 20),
            // ignore: deprecated_member_use
            RaisedButton(
              color: Colors.grey,
              child: Text(
                "Tambah",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: null ,
            ),
             SizedBox(height: 20),
            // ignore: deprecated_member_use
            RaisedButton(
              color: Colors.grey,
              child: Text(
                "Edit",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: null ,
            ),
             SizedBox(height: 20),
            // ignore: deprecated_member_use
            RaisedButton(
              color: Colors.grey,
              child: Text(
                "Hapus",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: null ,
            ),
            SizedBox(height: 20),
            Text(
              _result == null ? "Data Phonebook" : "",
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
