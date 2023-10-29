import 'package:flutter/material.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Material(
        color: const Color.fromRGBO(128, 0, 128, 1),
        child:ListView(
         // padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: const Row(
                children: [
                  CircleAvatar(radius: 30,backgroundColor: Colors.white,),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Akash Earn",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Rs. 25000",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25),
              child: const Text("Leaderboard - 230th Rank",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 48,),
            listItem(
              label:"DAILY QUIZ",
              icon:Icons.quiz
            ),
            listItem(
                label:"Leaderboard",
                icon:Icons.leaderboard
            ),
            listItem(
                label:"How to use",
                icon:Icons.question_answer
            ),
            listItem(
                label:"About",
                icon:Icons.face
            ),

          ],
        )
      ),
    );
  }

  Widget listItem({required String label, required IconData icon}){
    final color = Colors.white;
    final hovercolor = Colors.white60;

    return ListTile(
      hoverColor: hovercolor,
      leading: Icon(icon, color: color,),
      title: Text(label, style: TextStyle(color: color),),
      onTap: (){},
    );
  }
}
