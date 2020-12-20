// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'haSocket.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp() {
    var address = "10.20.30.2";
    var port = "8123";
    var accessToken =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIwZWJkYThmMjgwMjg0YTU3YmM5ZmM4YTJhYWU1MmRkOSIsImlhdCI6MTYwODQ4NzE1NSwiZXhwIjoxOTIzODQ3MTU1fQ.DPQrOrzxm5SlFi8XclXwhw2eFfdgkL4U2Dh6SfhvSmc";
    var haSocket = HaSocket('$address:$port', accessToken);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
