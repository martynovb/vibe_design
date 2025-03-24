import 'dart:convert';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:vibe_design/targets/run_configurations.dart';
import 'package:http/http.dart' as http;

class NetworkAssetLoader implements AssetLoader {
  static final _networkPath =
      'https://api.jsonbin.io/v3/b/67e16b678a456b79667bb571/l1atest';

  static final Map<String, String> _headers = {
    'X-Master-Key': RunConfigurations.jsonbinMasterKey,
    'X-Access-Key': RunConfigurations.jsonbinAccessKey,
    'X-Bin-Meta': 'false',
  };

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) =>
      _load(path, locale);

  Future<Map<String, dynamic>> _load(String path, Locale locale) async {
    try {
      var url = Uri.parse(_networkPath);
      final response = await http.get(url, headers: _headers);
      if (response.statusCode != 200) {
        throw Exception('Failed to load data from network');
      }
      return json.decode(response.body);
    } catch (e) {
      return _loadLocal(path, locale);
    }
  }

  Future<Map<String, dynamic>> _loadLocal(
    String path,
    Locale locale,
  ) async {
    try {
      final jsonString =
          await rootBundle.loadString('$path/${locale.toLanguageTag()}.json');
      return json.decode(jsonString);
    } catch (e) {
      final jsonString =
          await rootBundle.loadString('$path/uk.json');
      return json.decode(jsonString);
    }
  }
}
