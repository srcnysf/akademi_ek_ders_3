import 'package:akademi_ek_ders_3/models/response/categories_response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/response/category_response.dart';

class FirestoreService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  init() async {
    await FirebaseAuth.instance.signInAnonymously();
  }

  Future<List<MealCategory>> getCategory() async {
    List<MealCategory> categories = [];

    await firestore.collection("categories").get().then((value) {
      value.docs.forEach((element) {
        var blog = MealCategory.fromJson(element.data() as Map<String, dynamic>);
        categories.add(blog);
      });
    });

    return categories;
  }

  addCategory(MealCategory category) async {
    await firestore.collection("categories").add(category.toJson());
  }
}
