import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constantes/colors.dart';
import '../../../../../constantes/image_strings.dart';
import '../../../../../constantes/text_string.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSize {
  const DashboardAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.black),
      title: Text(tAppName, style: Theme.of(context).textTheme.headline4,),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top:7 ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: tCardBgColor,
          ),
          child: IconButton(onPressed: (){}, icon: const Image(image: AssetImage(tSplashImage)), ),
        )
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}