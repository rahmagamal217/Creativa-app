import 'package:auto_size_text/auto_size_text.dart';
import 'package:creativa_courses_app/constants.dart';
import 'package:flutter/material.dart';

import 'course_details.dart';

class CoursesContainer extends StatelessWidget {
  const CoursesContainer({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    //var icon = Icons.favorite_outline;
    //bool fav = false;
    return GestureDetector(
      onTap: () {
        //CourseDetails.showCourseDetails(context, index);
        CourseDetails.showAlertDialog(context, index);
        //CourseDetails.showAlertDialog(context, index);
        //showCourseDetails(context, index);
      },
      child: AspectRatio(
        aspectRatio: 0.75,
        child: Material(
          borderRadius: BorderRadius.circular(16),
          elevation: 8,
          child: Container(
            //padding: const EdgeInsets.all(12),
            // width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  AspectRatio(
                    aspectRatio: 0.8/0.65,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/images/course${index + 1}.jpg'),
                        ),
                      ),
                    ),
                  ),

                /*Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/course${index + 1}.jpg',
                      height: 130,
                      width: 130,
                    ),
                  ),
                ),*/
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        courseInfo[index]['Title']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AutoSizeText(
                        courseInfo[index]['Description']!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            courseInfo[index]['Duration']!,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Enroll',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.only(
                //     right: 4,
                //     left: 4,
                //     top: 7,
                //   ),
                //   child: Column(
                //    // crossAxisAlignment: CrossAxisAlignment.start,
                //     //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
    /*Column(
      children: [
        Material(
          elevation: 10,
          child: Container(
            width: size.width * 0.9,
            height: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Image.asset(
                      'assets/images/course.jpg',
                      fit: BoxFit.fill,
                      height: 200,
                      width: size.width * 0.9,
                    ),
                    IconButton(
                      icon: Icon(
                        icon,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          icon == Icons.favorite_outline
                              ? icon = Icons.favorite_rounded
                              : icon = Icons.favorite_outline;
                          fav == false ? fav = true : fav = false;
                          fav == false
                              ? favourites.add(const CoursesContainer())
                              : favourites.contains(const CoursesContainer())
                                  ? favourites.remove(const CoursesContainer())
                                  : null;
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  children: [
                    Text(
                      'Digital Marketing',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    )
                    /*SizedBox(
                      width: size.width * 0.43,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            icon = icon == Icons.star_border_outlined
                                ? Icons.star
                                : Icons.star_border_outlined;
                          });
                        },
                        icon: Icon(
                          icon,
                          color: Colors.yellow,
                        ),),*/
                  ],
                ),
                const Text(
                  'العقلية الإبداعية هي نقطة بدايتك كرائد أعمال لأنها بتساعدك تطلع أفكار وحلول لأي مشاكل بتواجهك وبالتالي هتقدر تفكر بشكل مبدع وريادي علشان تبني مشروعك!دورنا في كريتيفا اننا نوفرلك بيئة تدعم الإبداع ورواد الأعمال ودا اللي هنقدمه في برنامج "Minds Training Program"هتتعلم فيه:.....',
                ),
                /*const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.grey,
                    ),
                  ),
                  child: const Text('Learn More'),
                ),*/
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );*/
  }

  Future<dynamic> showCourseDetails(BuildContext context, int index) {
    return showDialog(
        context: context,
        builder: (context) {
          return Builder(
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  courseInfo[index]['Title']!,
                  textAlign: TextAlign.center,
                ),
                content: Builder(builder: (context) {
                  return AutoSizeText(
                    courseInfo[index]['Description']!,
                    textAlign: TextAlign.center,
                  );
                }),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'CANCEL'),
                    child: const Text('CANCEL'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'ENROLL'),
                    child: const Text('ENROLL'),
                  ),
                ],
              );
            },
          );
        });
  }
}
