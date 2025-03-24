import 'dart:convert';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class NetworkAssetLoader implements AssetLoader {
  static final _networkPath =
      'https://psmgcgszaftsviaqdotb.supabase.co/storage/v1/object/public/translations//uk.json';

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) =>
      _load(path, locale);

  Future<Map<String, dynamic>> _load(String path, Locale locale) async {
    try {
      var url = Uri.parse(_networkPath);
      final response = await http.get(url);
      if (response.statusCode != 200) {
        throw Exception('Failed to load data from network');
      }
      return json.decode(utf8.decode(response.bodyBytes));
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
      final jsonString = await rootBundle.loadString('$path/uk.json');
      return json.decode(jsonString);
    }
  }
}
