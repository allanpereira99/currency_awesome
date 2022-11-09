// SPDX-License-Identifier: MIT
// Copyright (c) 2022 Allan Pereira <https://github.com/allanpereira99>

import 'package:awesomeapi/repositorie/awesomeapi_interface.dart';

class Currency {
  final IHttpService service;
  final String baseUrl = "https://economia.awesomeapi.com.br/";
  Currency(this.service);
  Future fetchCurrency(String format, String from, String to) async {
    final response = await service.get("$baseUrl$format/last/$from-$to");
    return response;
  }
}
