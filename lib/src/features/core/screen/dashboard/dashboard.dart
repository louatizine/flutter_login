import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/src/constantes/colors.dart';
import 'package:flutterapp/src/constantes/image_strings.dart';
import 'package:flutterapp/src/constantes/sizes.dart';
import 'package:flutterapp/src/constantes/text_string.dart';
import 'package:flutterapp/src/features/core/screen/dashboard/widget/appbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            Text(tDashboardBannerTitle1, style: txtTheme.bodyText2,),
            Text(tDashboardHeading, style: txtTheme.headline2,),
            const SizedBox(height: tDashboardPadding,),

            //Search Box
            Container(
             decoration: const BoxDecoration(
                border: Border(left:BorderSide(width: 4))),
               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text (tDashboardSearch, style: txtTheme.headline2?.apply(color: Colors.grey.withOpacity(0.5)))
                ],


              ),

            ),
            const SizedBox(height: tDashboardPadding,),


           //Categories
           SizedBox(
             height: 45,
             child: ListView(
               scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: 170,
                    width: 50,
                    child: Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: tDarkColor
                          ),
                          child: Center(
                            child: Text("zine eddine", style: txtTheme.headline6?.apply(color: Colors.white),),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Flexible(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("hello", style: txtTheme.headline6,overflow: TextOverflow.ellipsis,),
                              Text("hello", style: txtTheme.headline2,),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 170,
                    width: 50,
                    child: Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: tDarkColor
                          ),
                          child: Center(
                            child: Text("zine eddine", style: txtTheme.headline6?.apply(color: Colors.white),),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Flexible(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("hello", style: txtTheme.headline6,overflow: TextOverflow.ellipsis,),
                              Text("hello", style: txtTheme.headline2,),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 170,
                    width: 50,
                    child: Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: tDarkColor
                          ),
                          child: Center(
                            child: Text("zine eddine", style: txtTheme.headline6?.apply(color: Colors.white),),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Flexible(
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("hello", style: txtTheme.headline6,overflow: TextOverflow.ellipsis,),
                              Text("hello", style: txtTheme.headline2,),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
           ),
            const SizedBox(height: tDashboardPadding,),

            //Banners
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Expanded(
                   child: Container(
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment:MainAxisAlignment.spaceBetween,
                           children: const[
                             Flexible(child: Image(image: AssetImage(tForgetPasswordImage))),
                              Flexible(child: Image(image: AssetImage(tForgetPasswordImage)))

                           ],
                         ),
                         const SizedBox(height: 25,),
                         Text(tDashboardBannerTitle1, style: txtTheme.headline4,maxLines:2,overflow:TextOverflow.ellipsis,),
                         Text(tDashboardBannerSubTitle,style: txtTheme.headline2,maxLines:1,overflow:TextOverflow.ellipsis),

                       ],
                     ),
                   ),
                 ),
                 const SizedBox(width: tDashboardCardPadding,),
                 Expanded(child: Column(
                   children: [
                     Container(
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment:MainAxisAlignment.spaceBetween,
                             children: const[
                               Flexible(child: Image(image: AssetImage(tForgetPasswordImage))),
                               Flexible(child: Image(image: AssetImage(tForgetPasswordImage)))

                             ],
                           ),
                           Text(tDashboardBannerTitle2,
                             style: txtTheme.headline4,overflow:TextOverflow.ellipsis,),
                           Text(tDashboardBannerSubTitle,
                               style: txtTheme.headline2,overflow:TextOverflow.ellipsis),

                         ],
                       ),
                     ),
                     SizedBox(
                         width: double.infinity,
                         child: OutlinedButton(onPressed: () {} , child: Text(tDashboardButton)))
                   ],
                 )

                 )
               ],
             ),

            const SizedBox(height: tDashboardPadding,),

            //top
            Text(tDashboardTopCourses, style: txtTheme.headline4?.apply(fontSizeFactor: 1.2)),
            SizedBox(
              height: 200,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 320,
                    height: 200,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10, top: 5),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(child: Text("hello", style: txtTheme.headline4,maxLines: 2, overflow: TextOverflow.ellipsis, )),
                                const Flexible(child:  Image(image: AssetImage(tSplashImage),height: 110,))
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  //style : ElevateButton.styleForm(shape: const CircleBorder(),
                                  onPressed: () {} , child: Icon(Icons.play_arrow),
                                ),
                                SizedBox(width: tDashboardCardPadding,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start ,
                                  children: [
                                    Text("hello", style: txtTheme.headline4, overflow: TextOverflow.ellipsis),
                                    Text("hello", style: txtTheme.headline4, overflow: TextOverflow.ellipsis)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(child: Text("hello", style: txtTheme.headline4,maxLines: 2, overflow: TextOverflow.ellipsis, )),
                              const Flexible(child:  Image(image: AssetImage(tSplashImage),height: 110,))
                            ],
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                //style : ElevateButton.styleForm(shape: const CircleBorder(),
                                onPressed: () {} , child: Icon(Icons.play_arrow),
                              ),
                              SizedBox(width: tDashboardCardPadding,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start ,
                                children: [
                                  Text("hello", style: txtTheme.headline4, overflow: TextOverflow.ellipsis),
                                  Text("hello", style: txtTheme.headline4, overflow: TextOverflow.ellipsis)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(child: Text("hello", style: txtTheme.headline4,maxLines: 2, overflow: TextOverflow.ellipsis, )),
                              const Flexible(child:  Image(image: AssetImage(tSplashImage),height: 110,))
                            ],
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                //style : ElevateButton.styleForm(shape: const CircleBorder(),
                                onPressed: () {} , child: Icon(Icons.play_arrow),
                              ),
                              SizedBox(width: tDashboardCardPadding,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start ,
                                children: [
                                  Text("hello", style: txtTheme.headline4, overflow: TextOverflow.ellipsis),
                                  Text("hello", style: txtTheme.headline4, overflow: TextOverflow.ellipsis)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(child: Text("hello", style: txtTheme.headline4,maxLines: 2, overflow: TextOverflow.ellipsis, )),
                              const Flexible(child:  Image(image: AssetImage(tSplashImage),height: 110,))
                            ],
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                //style : ElevateButton.styleForm(shape: const CircleBorder(),
                                onPressed: () {} , child: Icon(Icons.play_arrow),
                              ),
                              SizedBox(width: tDashboardCardPadding,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start ,
                                children: [
                                  Text("hello", style: txtTheme.headline4, overflow: TextOverflow.ellipsis),
                                  Text("hello", style: txtTheme.headline4, overflow: TextOverflow.ellipsis)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(child: Text("hello", style: txtTheme.headline4,maxLines: 2, overflow: TextOverflow.ellipsis, )),
                              const Flexible(child:  Image(image: AssetImage(tSplashImage),height: 110,))
                            ],
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                //style : ElevateButton.styleForm(shape: const CircleBorder(),
                                onPressed: () {} , child: Icon(Icons.play_arrow),
                              ),
                              SizedBox(width: tDashboardCardPadding,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start ,
                                children: [
                                  Text("hello", style: txtTheme.headline4, overflow: TextOverflow.ellipsis),
                                  Text("hello", style: txtTheme.headline4, overflow: TextOverflow.ellipsis)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )

        ),

        ),
      );
  }
}



