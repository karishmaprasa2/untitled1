import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/api_service.dart';
import '../modal/user_modal.dart';
import 'like_screen.dart';

class UserListScreen extends StatelessWidget {
  final ApiServerClass apiServerClass = Get.put(ApiServerClass());

  @override
  Widget build(BuildContext context) {
    apiServerClass.getDataAdress();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Users List',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => LikeScreen()); // Navigate to the LikeScreen
            },
            icon: const Icon(Icons.favorite_border,color: Colors.white,),
          )
        ],
      ),
      body: Obx(() {
        if (apiServerClass.dataList1.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: apiServerClass.dataList1.length,
            itemBuilder: (context, index) {
              UserModal user = apiServerClass.dataList1[index];
              return Card(
                child: ListTile(
                  title: Text('${user.firstName} ${user.lastName}'),
                  subtitle: Text(user.email),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      user.liked ? Icons.favorite : Icons.favorite_border,
                      color: user.liked ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      apiServerClass.toggleLike(index); // Update the like status via the controller method
                    },
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
