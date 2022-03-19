import 'package:akademi_ek_ders_3/models/response/meal_list_response.dart';
import 'package:akademi_ek_ders_3/ui/main/main_view_model.dart';

class CategoryDetailViewModel extends MainViewModel {
  MealListResponse? mealList;

  initialize(String name) {
    if (mealList == null) {
      runBusyFuture(getMealListByCategory(name));
    }
  }

  getMealListByCategory(String name) async {
    mealList = await repository.getMealListByCategory(name);
  }
}
