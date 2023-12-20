// import 'package:flutter/material.dart';
// import 'package:hawai_jubu/src/view/_screen/more_views/more_view.dart';
// import 'package:provider/provider.dart';
// import '../../../utils/constaints/primary.dart';
// import '../../../utils/constaints/scrhi.dart';
// import '../../navigations/navigation_bar/notifications.dart';
// import '../../navigations/navigation_bar/widgets/icn_btn_counter.dart';
//
//
// class HomeHeader extends StatelessWidget {
//   const HomeHeader({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:
//       EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//       child: Consumer<CartProvider>(
//         builder: (context, cartProvider, _) {
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "SnapCart",
//                 style: TextStyle(
//                   fontSize: getProportionateScreenWidth(18),
//                   color: kPrimaryColor,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   IconBtnWithCounter(
//                     svgSrc: "assets/icons/Bell.svg",
//                     numOfitem: 0,
//                     press: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => const NotificationScreen(),
//                         ),
//                       );
//                     },
//                   ),
//                   SizedBox(width: getProportionateScreenWidth(8)),
//                   IconBtnWithCounter(
//                     svgSrc: "assets/icons/Cart Icon.svg",
//                     numOfitem: cartProvider.cartItems.length,
//                     press: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => const MoreView(),
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
