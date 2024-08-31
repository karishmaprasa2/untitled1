import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/api_service.dart';

class LikeScreen extends StatelessWidget {
  final ApiServerClass apiServerClass = Get.find<ApiServerClass>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Liked Users'),
      ),
      body: Obx(() {
        if (apiServerClass.likedUsers.isEmpty) {
          return const Center(
            child: Text('No users liked yet.'),
          );
        } else {
          return ListView.builder(
            itemCount: apiServerClass.likedUsers.length,
            itemBuilder: (context, index) {
              var user = apiServerClass.likedUsers[index];
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
                      apiServerClass.toggleLike(
                          apiServerClass.dataList1.indexOf(user));
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



