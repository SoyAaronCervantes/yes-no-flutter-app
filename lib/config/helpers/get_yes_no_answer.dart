import 'package:dio/dio.dart';

import '../../domain/entities/message.dart';

class GetYesNoAnswer {
  final _dio = Dio(BaseOptions(baseUrl: 'https://yesno.wtf'));
  Future<Message> getAnswer() async {
    final response = await _dio.get('/api');
    throw UnimplementedError();
  }
}
