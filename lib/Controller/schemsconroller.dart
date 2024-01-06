import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kkgmart/Model/schems.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NormalOrdersController extends GetxController {
  var orderList = <Scems>[].obs;

  verify() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var isToken = prefs.getString('isToken');

    var res = await http.get(
      Uri.parse('https://dmlux.in/project/public/api/schemes'),
      headers: {
        'Authorization': "Bearer $isToken",
      },
    );

    if (res.statusCode == 200) {
      orderList =
          scemsFromJson(jsonDecode(res.body.toString())) as RxList<Scems>;

      return orderList;
    } else {
      return [];
    }
  }
}
