import 'package:flutter/material.dart';
import 'package:youtube_mp3_factory/Models/screen_size.dart';

class Downloads extends StatelessWidget {
  const Downloads ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 9,
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: InkWell(
            onTap: (){
             // debugPrint("Hello");
            },
            child: SizedBox(
              height: 100,
              width: ScreenSize.width * 0.9,
              child: Row(
                  children: [
                    Flexible(child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network("https://i1.sndcdn.com/artworks-VdJk7LHBiyxDvAYz-Zdv0WQ-t500x500.jpg")
                    ),
                    ),
                    const SizedBox(
                      width: 15
                      ),
                    Flexible(
                    child: Column(
                      children: [
                        const Text("CKay - Love Nwantiti Remix ft.Joeboy & Kuami Eugene [Ah Ah Ah] (Official Video"),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Flexible(
                                child: Text("Download Completed",
                              style: TextStyle(fontSize: 10),
                              ),
                              flex: 2,),
                              Flexible(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const[
                                    Text("Mp3",
                                    style: TextStyle(fontSize: 9),
                                    ),
                                    Text("330 KBPS",
                                    style: TextStyle(fontSize: 9),
                                    ),
                                  ],
                                ),
                              ),


                            ],
                          ),
                        ),
                        
                      ],
                    ),
                    flex:2
                    ),
                  ],
                ),
            ),
          ),
        );
      })
       
      
    );
  }
}