class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({required this.id, required this.image, required this.category, required this.title});
}

// Demo List of my works

List<RecentWork> recentworks = [
  RecentWork(
    id: 1, 
    image: "assets/images/work_1.png", 
    category: "Graphic Design", 
    title: "New and Fresh Looking Portfolio indeed at the time",
    ),

    RecentWork(
    id: 2, 
    image: "assets/images/work_2.png", 
    category: "Graphic Design", 
    title: "New and Fresh Looking Portfolio indeed at the time",
    ),

    RecentWork(
    id: 3, 
    image: "assets/images/work_3.png",
     category: "Graphic Design", 
    title: "New and Fresh Looking Portfolio indeed at the time",
    ),

    RecentWork(
    id: 4, 
    image: "assets/images/work_4.png", 
    category: "Graphic Design", 
    title: "New and Fresh Looking Portfolio indeed at the time",
    ),
];