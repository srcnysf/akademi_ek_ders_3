import 'package:akademi_ek_ders_3/ui/category_detail/category_view_model.dart';
import 'package:akademi_ek_ders_3/widgets/search_item.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../constants/constants.dart';

class CategoryDetailView extends StatelessWidget {
  final String name;
  CategoryDetailView({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoryDetailViewModel>.reactive(
        viewModelBuilder: () => CategoryDetailViewModel(),
        onModelReady: (model) => model.initialize(name),
        disposeViewModel: false,
        builder: (context, model, widget) => Scaffold(
              appBar: AppBar(
                title: Text(
                  name,
                  style: TextStyle(color: Constants.titleColor),
                ),
              ),
              body: model.mealList == null
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        return OpenContainer(
                          closedElevation: 0,
                          openElevation: 0,
                          closedColor: Colors.transparent,
                          openColor: Colors.transparent,
                          transitionType: ContainerTransitionType.fade,
                          transitionDuration: const Duration(milliseconds: 400),
                          openBuilder: (context, action) {
                            return Container();
                          },
                          closedBuilder: (context, action) {
                            return SearchListItem(
                                name: model.mealList!.meals![index].strMeal,
                                url: model.mealList!.meals![index].strMealThumb);
                          },
                        );
                      },
                    ),
            ));
  }
}
