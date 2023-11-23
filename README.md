
<h1 align="center">
  How to Use API in Flutter
  <br>
</h1>

## Detail

* API as Application Programming Interface:
  - Flutter API: Flutter provides various APIs that allow developers to interact with the framework and build applications. For example, APIs for drawing widgets, managing state, handling user input, etc. This Flutter API is contained in the Dart programming language.
    
* API as External Service:
   - Web Services API: In mobile application development, it is often necessary to communicate with external services such as web servers to get or send data. Web Services   APIs allow applications to talk to servers over HTTP (usually RESTful APIs or GraphQL) to retrieve or send data.
  - API handling in Flutter:
http package: To communicate with the HTTP API, many Flutter developers use a Dart package called http. This package provides functions for making HTTP requests to the server and responding to the results.

## How To Use
```bash
import 'package:http/http.dart' as http;

Future fetchData() async {
  final response = await http.get('https://example.com/api/data');
  if (response.statusCode == 200) {
    // Data berhasil diambil, lakukan sesuatu dengan responsnya.
    print('Response data: ${response.body}');
  } else {
    // Jika permintaan gagal, tampilkan pesan kesalahan.
    print('Failed to load data: ${response.statusCode}');
  }
}
```

> GitHub [@muhammadsadri19](https://github.com/muhammadsadri19) &nbsp;&middot;&nbsp;
> Linkedin [@muhammadsadri](https://www.linkedin.com/in/muhammad-sadri/)
