import 'package:akademi_ek_ders_3/models/request/area_request.dart';
import 'package:akademi_ek_ders_3/models/response/meal_list_response.dart';
import 'package:akademi_ek_ders_3/ui/main/main_view_model.dart';

class AreaViewModel extends MainViewModel {
  MealListResponse? mealList;

  void initialize(String? area) async {
    setBusy(true);
    if (mealList == null) {
      await getMealsByArea(area);
    }
    notifyListeners();
    setBusy(false);
  }

  getMealsByArea(String? area) async {
    var areaRequest = AreaRequest()..a = area;
    await repository.getMealsByArea(areaRequest.a!).then((mealList) {
      this.mealList = mealList;
      notifyListeners();
    }).catchError((error) {
      setError(error);
    });
  }
}
