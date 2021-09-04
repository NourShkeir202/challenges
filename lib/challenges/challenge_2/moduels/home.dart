import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme= Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios,size: 20,),
        onPressed: ()
        {

        },
      ),
        title: Text(
          "Latest News",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),
        actions:
        [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: ()
            {

            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: 60,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children:
                  [
                    IconButton(
                      onPressed: ()
                      {

                      },
                      icon: Icon(
                        Icons.sort,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 4,),
                    Text("Sort"),
                    SizedBox(width: 10,),
                    IconButton(
                        onPressed: ()
                        {

                        },
                        icon: Image.asset("assets/images/icons/adjust.png",color: Colors.blue,)
                    ),
                    SizedBox(width: 4,),
                    Text("Refine"),
                    Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.crop_3_2,color: Colors.black,),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.list_outlined,color: Colors.blue,))
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex:9,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
            itemBuilder: (context,index)=> Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children:
                    [
                      Expanded(
                        flex:1,
                        child: Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/images/1.jfif"),
                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:
                          [
                            Row(
                              children:
                              [
                                Container(
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "RUNNING",
                                      style: textTheme.headline1,
                                    ),
                                  ),
                                  ),
                                SizedBox(width: 10,),
                                Container(
                                  width: 60,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green,
                                  ),
                                  child: Center(
                                    child: Text("TRAINING",
                                      style: textTheme.headline1
                                      ),),
                                  ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Your Full Marathon Training Plan - 29 Weeks",
                              style: textTheme.headline2,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 5,),
                            Text(
                              "May 20,2021",
                              style: textTheme.headline4,
                            ),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Icon(Icons.attachment_sharp,color: Colors.green,size: 20,),
                                SizedBox(width: 8,),
                                Text("Logan",style: textTheme.headline3),
                                SizedBox(width: 15,),
                                Icon(Icons.chat_bubble_outline,color: Colors.green,size: 20,),
                                SizedBox(width: 8,),
                                Text("19",style: textTheme.headline3),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),separatorBuilder: (context,index)=>Divider(
              indent: 18,
              endIndent: 18,
            ),
              itemCount: 20,
        ),
          ),
      ]
      ),
    );
  }
}
