import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 69, 69, 84),
        title: Text('HOME',style: TextStyle(
       color: Colors.white,
        fontWeight: FontWeight.w500,fontSize: 25,
      ),),centerTitle: true,),

      body: SafeArea(child:ListView.
      separated(itemBuilder:(context, index) {
        return  Padding(
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
          child: Container(
            
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 203, 214, 219)
        
              ) ,
              
              child: Column(
        
                children: [
                  
                  Container(
                    height: 150,
                    width: 360,
                      decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                
                image: DecorationImage(image: AssetImage('lib/assets/asdlkd.jpg'),
                fit: BoxFit.fill
                ),
        
              ) ,
                    
                  ),
                
                 
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name: Hotal Name',style: TextStyle(fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.black),),
                            Text('Location: Munnar',style: TextStyle(fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black),),
                            SizedBox(height: 4,),
                             Text('Date: 20/01/2024',style: TextStyle(fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black),),
                          ],
                        ),
                        SizedBox(width: 70,),
                        Column(
                        
                      children: [
                                      Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(137, 105, 105, 105).withOpacity(0.2)
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_sharp,size: 20,),)),
                      SizedBox(height: 5,),
                            Text('ViewAll',style: TextStyle(fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.black),),       
                                      
                      ],
                                      ),
                      ],
                                      ),
                    ),
             

                 
                ],
              ),
            ),
        );
      }, separatorBuilder: (context, index) => SizedBox(height: 0,), itemCount: 7)
        
      ),
    );
  }
}