import 'package:akademi_ek_ders_3/models/response/area_list_response.dart';
import 'package:akademi_ek_ders_3/models/response/categories_response.dart';
import 'package:akademi_ek_ders_3/models/response/category_response.dart';
import 'package:akademi_ek_ders_3/ui/main/main_view.dart';
import 'package:akademi_ek_ders_3/ui/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../models/request/area_request.dart';

class HomeViewModel extends MainViewModel {
  Categories? categoryList;
  List<MealCategory>? categoryListFirebase;
  late AreaListReponse areaList;

  init() async {
    await getAreaList("American");

    categoryList = await repository.getCategories().catchError((error) {
      setError(error);
    });
    categoryListFirebase = await firestoreService.getCategory();
    notifyListeners();
  }

  getAreaList(String area) async {
    var areaRequest = AreaRequest()..a = area;
    await repository.getAreaList(areaRequest.a!).then((areaList) {
      this.areaList = areaList;
      notifyListeners();
    }).catchError((error) {
      setError(error);
    });
  }

  updateLikes() async {
    categoryListFirebase = await firestoreService.getCategory().catchError((error) {
      setError(error);
    });
    notifyListeners();
  }
}
