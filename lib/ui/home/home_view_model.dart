import 'package:akademi_ek_ders_3/models/response/categories_response.dart';
import 'package:akademi_ek_ders_3/models/response/category_response.dart';
import 'package:akademi_ek_ders_3/ui/main/main_view.dart';
import 'package:akademi_ek_ders_3/ui/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends MainViewModel {
  Categories? categoryList;
  List<MealCategory>? categoryListFirebase;
  init() async {
    categoryList = await repository.getCategories();
    categoryListFirebase = await firestoreService.getCategory();
    notifyListeners();
  }

  updateLikes() async {
    categoryListFirebase = await firestoreService.getCategory();
    notifyListeners();
  }
}
