import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:random_joke_app/data/models/JokeModels.dart';

class JokeController extends GetxController {
  final categories = ["Programming", "Misc", "Spooky", "Any"];
  var selectedCategory = "Programming".obs;
  var isExpanded = false.obs; // controls expansion
  var jokes = <JokeModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchJokes();
  }

  Future<void> fetchJokes() async {
    jokes.clear();

    for (int i = 0; i < 10; i++) {
      final url =
          'https://v2.jokeapi.dev/joke/${selectedCategory.value}?type=twopart';
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        if (data['type'] == 'twopart' &&
            data['setup'] != null &&
            data['delivery'] != null) {
          jokes.add(
            JokeModel(setup: data['setup'], delivery: data['delivery']),
          );
        }
      }
    }
  }

  void setCategory(String category) {
    selectedCategory.value = category;
    isExpanded.value = false; // close after selection
    fetchJokes();
  }

  void toggleDropdown() {
    isExpanded.value = !isExpanded.value;
  }
}
