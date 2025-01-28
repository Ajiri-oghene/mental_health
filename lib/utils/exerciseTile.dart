import 'package:flutter/material.dart';
import 'package:mental/utils/color.dart';


class ExerciseTile extends StatelessWidget {
  final icon;
  final String exercisename;
  final int numberOfExercise;
  final color;
  const ExerciseTile(
    
    {super.key,
    
     required this.icon,
     required this.exercisename,
     required this.numberOfExercise,
     required this.color,
    
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: kPure
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: color,
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                  child: Icon(icon,
                                  color: kPure,
                                  ),
                                ),

                                SizedBox(width: 12),
                                
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //title
                                    Text(
                                      exercisename,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16, 
                                      ),
                                    ),
                                    SizedBox(height: 7,),
                                    Text(
                                      numberOfExercise.toString() + ' Exercises',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.grey
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        )
                      ),
    );
  }
}