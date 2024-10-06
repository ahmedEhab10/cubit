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
      print(response.data.toString());
      if (response.data is Map<String, dynamic> &&
          response.data['results'] != null) {
        return response.data['results'] as List<dynamic>;
      } else {
        return [];
      }
    } on DioException catch (e) {
      print(e.toString());
      return [];
    }
  }
}
