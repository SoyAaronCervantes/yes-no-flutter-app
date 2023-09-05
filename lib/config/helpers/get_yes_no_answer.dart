import 'package:dio/dio.dart';
import 'package:yes_no/infrastructure/models/yes_no_model.dart';

import '../../domain/entities/message.dart';

class GetYesNoAnswer {
  final _dio = Dio(BaseOptions(baseUrl: 'https://yesno.wtf'));
  Future<Message> getAnswer() async {
    final response = await _dio.get('/api');
    final yesNoModel = YesNoModel.fromJson(response.data);
    return Message(
      text: yesNoModel.answer,
      imageUrl: yesNoModel.image,
      fromWho: FromWho.receiver,
    );
  }
}
