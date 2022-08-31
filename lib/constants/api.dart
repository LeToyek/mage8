import 'package:dio/dio.dart';

const kBaseUrl = 'https://sikama.herokuapp.com/api/v1';
final kHeaders = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};
final kBaseOptions = BaseOptions(
  baseUrl: kBaseUrl,
  headers: kHeaders,
);
