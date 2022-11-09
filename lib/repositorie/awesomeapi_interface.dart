// SPDX-License-Identifier: MIT
// Copyright (c) 2022 Allan Pereira <https://github.com/allanpereira99>

import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class IHttpService {
  Future<Map<String, dynamic>> get(String url);
}

class HttpService implements IHttpService {
  final http.Client httpCliente;
  HttpService(this.httpCliente);
  @override
  Future<Map<String, dynamic>> get(String url) async =>
      jsonDecode((await httpCliente.get(Uri.parse(url))).body);
}
