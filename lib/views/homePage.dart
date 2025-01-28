import 'package:flutter/material.dart';
import 'package:mental/utils/color.dart';
import 'package:mental/utils/emoji.dart';
import 'package:mental/utils/exerciseTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kprimaryColor,
        items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // Greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Hi Sandra!',
                          style: TextStyle(
                            color: kPure,
                            fontSize: 24,
                            fontWeight: FontWeight.bold 
                          ),
                          ),
                           const SizedBox(height: 8),

                           // date 
                           Text(
                            '12 Oct, 2022',
                            style: TextStyle(
                              color: Colors.blue[200]
                            ),
                           )
                        ]
                      ),
                      
                      // notification

                      Container(
                        decoration: BoxDecoration(
                          color: kBlue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: kPure,
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 25),
                  //search bar
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Row(
                      children: const[
                        Icon(
                          Icons.search,
                          color: kPure,
                        ),

                        SizedBox(width: 5,),

                        Text(
                          'search',
                          style: TextStyle(
                            color: kPure
                          ),
                        )
                      ],
                    ),
                     
                  ),
                  const SizedBox(height: 25),

                  // How do you feel?

                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                    Text(
                      'How do you feel ?',
                      style: TextStyle(
                        color: kPure,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: kPure,
                    )
                  ],
                  ),
                  const SizedBox(height: 25),

                    // four different faces
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Bad
                    Column(
                      children:const [
                        Emoji(
                          face: '😟',
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Bad',
                          style: TextStyle(
                            color: kPure
                          ),
                        )
                      ],
                    ),

                    // Fine
                    Column(
                      children: const[
                        Emoji(
                          face: '🙂',
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Fine',
                          style: TextStyle(
                            color: kPure
                          ),
                        )
                      ],
                    ),

                    // well
                    Column(
                      children: const[
                        Emoji(
                          face: '😃',
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Well',
                          style: TextStyle(
                            color: kPure
                          ),
                        )
                      ],
                    ),

                    //Excellent
                    Column(
                      children: [
                        Emoji(
                          face: '🥳',
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Excellent',
                          style: TextStyle(
                            color: kPure
                          ),
                        )
                      ],
                    ),

                  ],
          ),
                ],
              ),
            ),

            const SizedBox(height: 25),

          //white container
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)
                )
              ),
              padding: EdgeInsets.all(25),
              child: Center(
                child: Column(
                  children: [
                    // Exercise heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                        Text(
                          'Exercises',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Icon(
                      Icons.more_horiz,
                      //color: kPure,
                    )
                      ],
                    ),
                    SizedBox(height: 20),
                    // List view of exercises
                    
                    Expanded(
                      child: ListView(
                        children: const[
                          ExerciseTile(
                            icon: Icons.favorite,
                            exercisename: 'Speaking Skills',
                            numberOfExercise: 16,
                            color: Colors.orange,
                          ),
                          ExerciseTile(
                            icon: Icons.person,
                            exercisename: 'Reading Skills',
                            numberOfExercise: 8,
                            color: Colors.green,
                          ),
                          ExerciseTile(
                            icon: Icons.star,
                            exercisename: 'writing Skills',
                            numberOfExercise: 20,
                            color: Colors.pink,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )

          ],
        ),
      ),
    );
  }
}