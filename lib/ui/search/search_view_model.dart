import 'package:akademi_ek_ders_3/models/request/search_request.dart';
import 'package:akademi_ek_ders_3/models/response/meal_detail_list_response.dart';
import 'package:akademi_ek_ders_3/ui/main/main_view_model.dart';
import 'package:flutter/material.dart';

class SearchViewModel extends MainViewModel {
  TextEditingController controller = new TextEditingController();
  MealDetailListResponse? mealList;

  searchMeals(String ingredient) async {
    await repository.searchMeals(ingredient).then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {
      setError(error);
    });
  }
}
