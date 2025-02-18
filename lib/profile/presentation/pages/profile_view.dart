// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:recipe2/profile/presentation/pages/profile_viewmodel.dart';
// import '../../../core/colors/colors.dart';
//
// class ProfileBody extends StatelessWidget {
//   const ProfileBody({super.key, required this.viewModel});
//
//   // final ProfileViewModel viewModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListenableBuilder(listenable: viewModel,
//       builder:(context, child) =>  Padding(
//         padding: const EdgeInsets.only(
//           top: 100,
//           left: 31,
//           right: 32,
//         ),
//         child: Align(
//           alignment: Alignment.center,
//           child: GridView.builder(
//             shrinkWrap: true, // ✅ Qo‘shildi
//             physics: NeverScrollableScrollPhysics(), // ✅ Nested scroll uchun
//             clipBehavior: Clip.none,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               mainAxisSpacing: 35,
//               crossAxisSpacing: 27,
//               mainAxisExtent: 226,
//             ),
//             itemCount: viewModel.items.length,
//             itemBuilder: (context, index) => Stack(
//               clipBehavior: Clip.none,
//               children: [
//                 Container(
//                   width: 160,
//                   height: 80,
//                   padding: EdgeInsets.only(top: 8.5, bottom: 6, left: 15, right: 10),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.vertical(
//                       bottom: Radius.circular(14),
//                     ),
//                     border: Border.all(
//                       color: RecipeColors.buttonColor,
//                       width: 1.5,
//                     ),
//                     color: Colors.white,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         viewModel.items[index].title,
//                         style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       SizedBox(height: 4),
//                       Text(
//                         viewModel.items[index].bio,
//                         textAlign: TextAlign.start,
//                         style: TextStyle(
//                           height: 1,
//                           color: Colors.black,
//                           fontSize: 10,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       SizedBox(height: 12),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                               Text(
//                                 viewModel.items[index].rating.toString(), // ✅ Xatolik tuzatildi
//                                 style: TextStyle(
//                                   color: RecipeColors.buttonColor,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                               SizedBox(width: 5), // ✅ To‘g‘ri spacing
//                               SvgPicture.asset(
//                                 "assets/svg/star.svg",
//                                 fit: BoxFit.cover,
//                                 width: 10,
//                                 height: 10,
//                                 colorFilter: ColorFilter.mode(
//                                   RecipeColors.buttonColor,
//                                   BlendMode.srcIn,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               SvgPicture.asset(
//                                 "assets/svg/clock.svg",
//                                 fit: BoxFit.cover,
//                                 width: 10,
//                                 height: 10,
//                                 colorFilter: ColorFilter.mode(
//                                   RecipeColors.buttonColor,
//                                   BlendMode.srcIn,
//                                 ),
//                               ),
//                               SizedBox(width: 5), // ✅ To‘g‘ri spacing
//                               Text(
//                                 viewModel.items[index].timeRequired.toString(), // ✅ Xatolik tuzatildi
//                                 style: TextStyle(
//                                   color: RecipeColors.buttonColor,
//                                   fontSize: 12,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 73,
//                   left: -5,
//                   right: -5.5,
//                   child: Stack(
//                     children: [
//                       Container(
//                         width: 170,
//                         height: 153,
//                         decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withValues(alpha: 0.2), // ✅ Yorug‘roq soya
//                               blurRadius: 7,
//                               spreadRadius: 1,
//                               offset: Offset(0, 3),
//                             )
//                           ],
//                         ),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(14),
//                           child: Image.asset(
//                             viewModel.items[index].image,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
