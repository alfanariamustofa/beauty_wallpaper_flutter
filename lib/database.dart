class DataItem {
  int category;
  String url;
  DataItem({this.category,this.url});
}

class Database{

  List<DataItem> database = List.empty(growable: true);

  Database(){
    ///Data Kategori Hewan
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/20/06/49/bird-6559623_1280.jpg"));
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/21/11/19/butterfly-6562522_1280.jpg"));
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/21/06/33/red-fox-6561903__340.jpg"));
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/16/09/21/seagulls-6549872__340.jpg"));
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/21/11/17/hover-6562520__340.jpg"));
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/22/08/59/squirrel-6564604__340.jpg"));
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/21/07/08/bee-6561966__340.jpg"));
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/18/13/00/grasshopper-6555526__480.jpg"));
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/18/22/42/australian-shepherd-6556697__480.jpg"));
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/21/11/29/kingfisher-6562537__480.jpg"));
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/19/10/47/kangaroo-6557734__480.jpg"));
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/18/01/00/squirrel-6554371__480.jpg"));
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/22/06/46/insect-6564333__480.jpg"));
    database.add(DataItem(category:2, url:"https://cdn.pixabay.com/photo/2021/08/21/12/58/bee-6562702__480.jpg"));

    ///Data Food/Dringk
    database.add(DataItem(category:1, url:"https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__340.jpg"));
    database.add(DataItem(category:1, url:"https://cdn.pixabay.com/photo/2016/03/23/15/00/ice-cream-1274894__340.jpg"));
    database.add(DataItem(category:1, url:"https://cdn.pixabay.com/photo/2015/10/02/15/59/olive-oil-968657__340.jpg"));
    database.add(DataItem(category:1, url:"https://cdn.pixabay.com/photo/2016/03/10/18/44/top-view-1248955__340.jpg"));
    database.add(DataItem(category:1, url:"https://cdn.pixabay.com/photo/2017/07/28/14/29/macarons-2548827__340.jpg"));
    database.add(DataItem(category:1, url:"https://cdn.pixabay.com/photo/2017/09/16/19/21/salad-2756467__340.jpg"));
    database.add(DataItem(category:1, url:"https://cdn.pixabay.com/photo/2017/12/01/16/14/cookies-2991174__340.jpg"));
    database.add(DataItem(category:1, url:"https://cdn.pixabay.com/photo/2015/12/09/17/11/vegetables-1085063__340.jpg"));
    database.add(DataItem(category:1, url:"https://cdn.pixabay.com/photo/2017/06/02/18/24/watermelon-2367029__480.jpg"));
    database.add(DataItem(category:1, url:"https://cdn.pixabay.com/photo/2017/02/15/10/39/salad-2068220__480.jpg"));
    database.add(DataItem(category:1, url:"https://cdn.pixabay.com/photo/2016/11/30/15/23/apples-1873078__480.jpg"));

    //Data Sport
    database.add(DataItem(category:4, url:"https://cdn.pixabay.com/photo/2012/11/02/13/02/car-63930__340.jpg"));
    database.add(DataItem(category:4, url:"https://cdn.pixabay.com/photo/2018/04/07/16/30/auto-3298890__340.jpg"));
    database.add(DataItem(category:4, url:"https://cdn.pixabay.com/photo/2016/05/27/14/33/football-1419954__340.jpg"));
    database.add(DataItem(category:4, url:"https://cdn.pixabay.com/photo/2020/05/26/07/43/skateboard-5221914__340.jpg"));
    database.add(DataItem(category:4, url:"https://cdn.pixabay.com/photo/2016/05/31/23/21/badminton-1428046__340.jpg"));
    database.add(DataItem(category:4, url:"https://cdn.pixabay.com/photo/2017/11/28/09/16/woman-2983129__340.jpg"));
    database.add(DataItem(category:4, url:"https://cdn.pixabay.com/photo/2016/11/29/10/21/dirt-bike-1868996__340.jpg"));
    database.add(DataItem(category:4, url:"https://cdn.pixabay.com/photo/2019/04/14/17/54/sport-4127336__480.jpg"));
    database.add(DataItem(category:4, url:"https://cdn.pixabay.com/photo/2016/07/22/14/12/bike-1534902__480.jpg"));
    database.add(DataItem(category:4, url:"https://cdn.pixabay.com/photo/2016/11/19/12/11/surfer-1838958__480.jpg"));
    database.add(DataItem(category:4, url:"https://cdn.pixabay.com/photo/2014/10/22/17/25/woman-498257__480.jpg"));
    database.add(DataItem(category:4, url:"https://cdn.pixabay.com/photo/2016/11/14/05/26/children-1822701__480.jpg"));

    //Data Teknologi
    database.add(DataItem(category:5, url:"https://cdn.pixabay.com/photo/2015/01/08/18/24/children-593313__340.jpg"));
    database.add(DataItem(category:5, url:"https://cdn.pixabay.com/photo/2014/09/20/13/52/board-453758__340.jpg"));
    database.add(DataItem(category:5, url:"https://cdn.pixabay.com/photo/2018/07/14/11/33/earth-3537401__340.jpg"));
    database.add(DataItem(category:5, url:"https://cdn.pixabay.com/photo/2016/03/26/13/09/workspace-1280538__340.jpg"));
    database.add(DataItem(category:5, url:"https://cdn.pixabay.com/photo/2015/06/24/15/45/hands-820272__480.jpg"));
    database.add(DataItem(category:5, url:"https://cdn.pixabay.com/photo/2015/07/15/09/00/man-845847__480.jpg"));
    database.add(DataItem(category:5, url:"https://cdn.pixabay.com/photo/2016/03/09/09/17/desktop-1245714__480.jpg"));
    database.add(DataItem(category:5, url:"https://cdn.pixabay.com/photo/2018/05/08/08/44/artificial-intelligence-3382507__480.jpg"));
    database.add(DataItem(category:5, url:"https://cdn.pixabay.com/photo/2016/03/04/19/36/gears-1236578__480.jpg"));
    database.add(DataItem(category:5, url:"https://cdn.pixabay.com/photo/2014/12/10/20/48/laboratory-563423__480.jpg"));
    database.add(DataItem(category:5, url:"https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324__480.jpg"));
    database.add(DataItem(category:5, url:"https://cdn.pixabay.com/photo/2016/06/12/20/27/macro-1452987__480.jpg"));

    //Data Nature
    database.add(DataItem(category:3, url:"https://cdn.pixabay.com/photo/2015/07/31/06/50/forest-868715__340.jpg"));
    database.add(DataItem(category:3, url:"https://cdn.pixabay.com/photo/2015/03/20/09/59/forest-682003__340.jpg"));
    database.add(DataItem(category:3, url:"https://cdn.pixabay.com/photo/2020/12/10/08/44/mountains-5819652__340.jpg"));
    database.add(DataItem(category:3, url:"https://cdn.pixabay.com/photo/2019/11/30/19/52/trees-4664060__340.jpg"));
    database.add(DataItem(category:3, url:"https://cdn.pixabay.com/photo/2015/03/26/10/20/path-691150__340.jpg"));
    database.add(DataItem(category:3, url:"https://cdn.pixabay.com/photo/2015/11/07/11/56/forest-1031654__340.jpg"));
    database.add(DataItem(category:3, url:"https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"));
    database.add(DataItem(category:3, url:"https://cdn.pixabay.com/photo/2014/10/07/18/20/women-478133__480.jpg"));
    database.add(DataItem(category:3, url:"https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821__480.jpg"));
    database.add(DataItem(category:3, url:"https://cdn.pixabay.com/photo/2014/02/27/16/10/tree-276014__480.jpg"));
    database.add(DataItem(category:3, url:"https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228__480.jpg"));
    database.add(DataItem(category:3, url:"https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830__480.jpg"));

    database.shuffle();

  }

  Future<List<Map<String,String>>> getList(int type) async {  
    List<Map<String,String>> result = List.empty(growable: true);
    
    for(var i=0;i<database.length;i++){
      if(type==0){
        if(i<20) result.add({"tag" : "item_$i", "url" : database[i].url});
      }
      else{
        if(database[i].category==type){
           result.add({"tag" : "item_$i", "url" : database[i].url});
        }
      }
    }
    return result;
  }

}