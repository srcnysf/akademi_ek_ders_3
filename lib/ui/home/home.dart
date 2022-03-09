import 'package:akademi_ek_ders_3/constants/constants.dart';
import 'package:akademi_ek_ders_3/ui/home/home_view_model.dart';
import 'package:akademi_ek_ders_3/widgets/category_item.dart';
import 'package:akademi_ek_ders_3/widgets/section_header.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  initFirebaseAuth() {
    FirebaseAuth.instance.signInAnonymously();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
              backgroundColor: Constants.backroundColor,
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title: Text("Home"),
                actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shopping_basket))],
              ),
              body: model.categoryList == null || model.categoryListFirebase == null
                  ? CircularProgressIndicator()
                  : Column(
                      children: [
                        SectionHeader(
                          title: "Categories",
                          onPressed: () {
                            // AutoRouter.of(context).push(CategoriesView());
                          },
                        ),
                        Container(
                          height: 350,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: model.categoryList!.categories!.length > 10
                                ? 10
                                : model.categoryList!.categories!.length,
                            padding: EdgeInsets.all(4),
                            itemBuilder: (context, index) {
                              return OpenContainer(
                                closedElevation: 0,
                                openElevation: 0,
                                closedColor: Colors.transparent,
                                openColor: Colors.transparent,
                                transitionType: ContainerTransitionType.fade,
                                transitionDuration: const Duration(milliseconds: 400),
                                openBuilder: (context, action) {
                                  // return CategoryDetailView(name: model.categoryList!.categories![index].strCategory);
                                  return Container();
                                },
                                closedBuilder: (context, action) {
                                  return CategoryItem(
                                      onLikePressed: () {
                                        model.firestoreService.addCategory(model.categoryList!.categories![index]);
                                        model.updateLikes();
                                      },
                                      hasLike: model.categoryListFirebase!.any((element) =>
                                          element.strCategoryThumb ==
                                          model.categoryList!.categories![index].strCategoryThumb),
                                      name: model.categoryList!.categories![index].strCategory,
                                      url: model.categoryList!.categories![index].strCategoryThumb,
                                      description: model.categoryList!.categories![index].strCategoryDescription);
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
            ));
  }
}
