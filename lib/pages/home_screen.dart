import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:note_sticker/controllers/home_screen_controller.dart';
import 'package:note_sticker/utils/constants/app_constants.dart';
import 'package:note_sticker/utils/constants/custom_widgets/app_text_ui.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    HomeScreenController homeScreenController = Get.find();

    return GetBuilder<HomeScreenController>(
      builder: (_) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            leading: const Icon(Icons.vertical_distribute_sharp),
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const AppTextUi(),
            centerTitle: true,
            actions: [
              homeScreenController.isGridView == false
                  ? InkWell(
                      onTap: () {
                        homeScreenController.isGridView = true;
                      },
                      child: Icon(Icons.grid_view))
                  : InkWell(
                onTap: (){
                  homeScreenController.isGridView = false;
                },
                  child: Icon(Icons.view_column_rounded)),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
            ],
          ),
          body: SafeArea(
            child: homeScreenController.isGridView == false ? ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text("Hi World ",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontFamily: "Product",
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: AppConstants.primaryColor,
                                    child: Icon(
                                      FontAwesomeIcons.bell,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.03,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: AppConstants.primaryColor,
                                    child: Icon(
                                      FontAwesomeIcons.penToSquare,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.002),
                          Text(
                            "Description asda asd sasd asd zxcz eqwe da zxczxc zcxhfjkgh dfkgh vxcv sfs ada bbvcbc dfgdf",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontFamily: "Product",
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.008),
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.calendar),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.01,
                              ),
                              Text(
                                "10/12/2023",
                                style: AppConstants.dateTimeTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
                : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of items in each row
                  mainAxisSpacing: 1.0, // spacing between rows
                  crossAxisSpacing: 4.0, // spacing between columns
                ),
                itemCount: 10,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text("Hi World asd asd asd asd zxcas asd asd",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontFamily: "Product",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20)),
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(FontAwesomeIcons.ellipsisVertical)
                              ],
                            ),
                            SizedBox(
                                height: MediaQuery.of(context).size.height * 0.002),
                            const Text(
                              "Description asda asd sasd asd zxcz eqwe da zxczxc zcxhfjkgh dfkgh vxcv sfs ada bbvcbc dfgdf",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 5,
                              style: TextStyle(
                                  fontFamily: "Product",
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.008),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.calendar),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.01,
                                ),
                                Text(
                                  "10/12/2023",
                                  style: AppConstants.dateTimeTextStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
            ),

          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: AppConstants.primaryColor,
            child: const Icon(
              FontAwesomeIcons.plus,
              color: AppConstants.backgroundColor,
            ),
          ),
        );
      },
    );
  }
}
