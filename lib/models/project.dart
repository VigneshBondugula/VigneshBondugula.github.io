class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> demoProjects = [
  Project(
    title: "eManas Mitra - Patient App",
    description:
        "An app for patients registered in eManas to access their medical records and to manage medical consents. Built using Angular and Jersey. eManas APIs are used to build the project.",
  ),
  Project(
    title: "Lecture Scheduling App",
    description:
        "An app to schedule lectures and make timetables for students and teachers. Built using flask, html and css. ",
  ),
  Project(
    title: "The Block Breaker - Game",
    description:
        "A game built during a hackathon using Javascript. Built using a model canvas given by Zense, Coding club of IIITB. Implemented using object oriented programming concepts.",
  ),
  Project(
    title: "Game Show - Sockets",
    description:
        "A terminal based 3 player quiz game show built using python. Built using sockets. Each player gets 10 seconds to press the buzzer and 10 seconds to answer the question. ",
  ),
  Project(
    title: "Super Market Billing System",
    description:
        "A terminal based menu driven interface system to make bills in a market. Developed using C. User can check items available, add and delete items to the database.",
  ),
];