import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../modal/user_modal.dart';

class ApiServerClass extends GetxController {
  var dataList1 = <UserModal>[].obs;
  var likedUsers = <UserModal>[].obs;

  getDataAdress() async {
    var uri = Uri.parse("https://reqres.in/api/users?page=2");
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      print(response.body); // Debug print
      var decode = jsonDecode(response.body);
      var userdata = decode["data"];
      var userList = userdata.map<UserModal>((e) => UserModal.fromJson(e)).toList();
      dataList1.assignAll(userList);
    } else {
      print("Failed to fetch data");
    }
  }

  void toggleLike(int index) {
    var user = dataList1[index];
    user.liked = !user.liked;
    dataList1[index] = user;

    if (user.liked) {
      likedUsers.add(user);
    } else {
      likedUsers.remove(user);
    }
  }
}
