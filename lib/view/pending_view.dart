import 'package:epharmalyical/controller/item_controller.dart';
import 'package:epharmalyical/view/dashboard_item_details.dart';
import 'package:epharmalyical/view/staticUi/Darwer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';





class PendingView extends StatelessWidget {

  final ItemController _itemController = Get.put(ItemController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:TextField(
            onChanged:(text){

              _itemController.apiSearchItems(text);

              // print(text);
            },
            controller: _itemController.editingController,
            decoration: InputDecoration(
              //   fillColor: Colors.white,
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)))),
          ),

          // Text("My items")
        ),
        //  drawer: MainDrawer(),
        body: Obx(()=>RefreshIndicator( child:ListView.builder(
            itemCount: _itemController.items.length,
            itemBuilder: (BuildContext context,int index){
              return ListTile(
                  onTap: (){
                    // print("ssss");
                    //    dashborad_Item_Details(_itemController.items[index]);


                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dashborad_Item_Details(_itemController.items[index])));


                  },
                  leading: Icon(Icons.local_pharmacy),
                  trailing: Text(_itemController.items[index].price.toString(),
                    style: TextStyle(
                        color: Colors.green,fontSize: 15),),
                  title:Text(_itemController.items[index].name)
              );
            }
        ),


            onRefresh:_itemController.getData

        )



        )



    );
  }
}