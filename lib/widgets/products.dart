import 'package:cacke_website/utils/responsiveness.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../utils/constant.dart';
import '../utils/image_list.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      alignment: Alignment.center,
   
      child: Column(
        children: [
          Stack(
clipBehavior: Clip.none,
            children: [
                 Positioned(
              top: -60,
              left: 0,
                child: Image.asset(
              'assets/images/plane.png',
              width: 70,
              height: 70,
            )),
                 Text('Our featured products'.toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 30)),
     
     
          ] ),

          Container(
          height: 700,
          width: 700,
          margin: const EdgeInsets.symmetric(vertical: 30),
          padding: const EdgeInsets.all(8),
            child: isSmallCreen(context) ? staggredList() : const CustumList()
          )
        ],
      ),

    );
  }

  Widget staggredList(){
    return StaggeredGrid.count(
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      crossAxisCount: 2, 
    children:  cakeUrl.map((e) => Image.network(e)).toList() ,
   );
  }
}

class CustumList extends StatelessWidget {
  const CustumList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
    gridDelegate: SliverStairedGridDelegate(
      crossAxisSpacing: 48,
      mainAxisSpacing: 24,
      startCrossAxisDirectionReversed: true,
      pattern: const[
         StairedGridTile(0.5, 1),
        StairedGridTile(0.5, 3 / 4),
        StairedGridTile(1.0, 10 / 4),
      ],
    ),
    childrenDelegate: SliverChildListDelegate(
     cakeUrl.map((e) => Image.network(e)).toList()
          ));
  }
}
