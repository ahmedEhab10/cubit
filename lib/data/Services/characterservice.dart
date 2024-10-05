import 'package:cubit1/Constants/const.dart';
import 'package:dio/dio.dart';

class Characterservice {
  late Dio dio;

  Characterservice() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: BaseUrl,
      receiveDataWhenStatusError: true,
    );
    dio = Dio(baseOptions);
  }

  Future<List<dynamic>> GetAllChratater() async {
    try {
      Response response = await dio.get('character');
      return response.data;
    } on DioException catch (e) {
      print(e.toString());
      return [];
    }
  }
}
