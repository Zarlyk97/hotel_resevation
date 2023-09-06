import 'package:dio/dio.dart';
import 'package:otel_dev/constants/api_const.dart';
import 'package:otel_dev/models/model.dart';
import 'package:otel_dev/models/register_model.dart';
import 'package:otel_dev/models/rooms_model.dart';

class ApiService {
  final Dio _client = Dio();
  Future<Usermodel?> getUsers() async {
    try {
      var response = await _client.get(ApiConst.url());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Usermodel.fromJson(response.data);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<RegisterModel?> getUsers2() async {
    try {
      var response = await _client.get(ApiConstRegister.url());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return RegisterModel.fromJson(response.data);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<List<Room>?> getUsers1() async {
    try {
      var response = await _client.get(ApiConstRoom.uri());
      if (response.statusCode == 200 || response.statusCode == 201) {
        List rooms = response.data['rooms'];
        return rooms.map((e) => Room.fromJson(e)).toList();
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
