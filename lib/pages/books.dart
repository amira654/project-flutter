class item {
  String name;
  String imgpath;
  double price;
  String text;

  item({
    required this.name,
    required this.imgpath,
    required this.price,
    required this.text,
  });
}

final List<item> items = [
  item(
    text:
        "The Clean Coder: Robert C. Martin writes a Code of Conduct for Professional Programmers. This reference book offers practical advice about everything, from estimating and coding to refactoring and testing.The author also explains how to approach software development with honor, self-respect, and pride. It helps you to communicate and estimate difficult decisions with clarity and honesty.",
    name: "book",
    imgpath: "assets/images/5.jpg",
    price: 312.99,
  ),
  item(
    text:
        "Enterprise Integration Patterns is a book written by Gregor Hohpe and Bobby Woolf. It is one of the best books on programming which offers an invaluable catalog of various pattern suggestions with real-world solutions that help you design effective messaging solutions for your enterprise.This software engineering book provides a consistent vocabulary and visual notation framework. It explains large-scale integration solutions across many technologies. The book also explores in detail the advantages and limitations of asynchronous messaging architectures.",
    name: "book",
    imgpath: "assets/images/6.jpg",
    price: 152.99,
  ),
  item(
    text:
        "Headfirst Design Patterns, now updated for Java 8, shows you the tried-and-true, tested software development team patterns to create functional, reusable, and flexible software.After reading this best computer programming book, you will benefit from the best design practices and experiences of those who have designed various types of software. This book offers a visually rich format. The book uses the latest research in cognitive science and learning theory to provide a multi-sensory learning experience.",
    name: "book",
    imgpath: "assets/images/7.jpg",
    price: 126.99,
  ),
  item(
    text:
        "User Stories Applied: For Agile Software Development is a book written by Mike Cohn. The book represents an effective means of gathering requirements from the customer. It also describes user stories and demonstrates how they can properly plan, manage, and test software development jobs.It is one of the best books for programmers which highlights both successful and unsuccessful implementations of the concept and provides sets of questions and exercises. After reading this best book to learn coding, you will be able to know what are the effective means for developing software applications.",
    name: "book",
    imgpath: "assets/images/10.jpg",
    price: 212.99,
  ),
  item(
    text:
        "The Pragmatic Programmer is a book written by David Thomas (Author), Andrew Hun. The book helps clients to create better software and rediscover the joy of coding. This book’s lesson helped a generation of software developers examine the very essence of software development, independent of any specific language, framework, or methodology, and the Pragmatic philosophy.This is one of the best book to learn coding for software engineers. As it illustrates the great approaches and major pitfalls of many aspects of software development.",
    name: "book",
    imgpath: "assets/images/11.jpg",
    price: 192.99,
  ),
  item(
    text:
        "C++ Primer is a book written by Stanley B, introduces the C++ standard library from the outset. It helps you to write useful programs without the need to master every aspect of the C++ language. The books cover many examples, and it also demonstrates how to make the best use of them.This is one of the best coding book which is ideal for a new developer who wants to know core C++ concepts and techniques. The book helps you to learn through examples that illuminate today’s best coding styles and program design techniques.",
    name: "book",
    imgpath: "assets/images/12.jpg",
    price: 712.99,
  ),
  item(
    text:
        "CODE COMPLETE is a book written by Steve McConnell. This classic book offers a wide range of new code samples to illustrate software development’s art and science.The author also synthesizes the most effective techniques and must-know principles into clear, pragmatic guidance. This book helps you to stimulate your think and help you build the highest quality code.This is a best book on programming also allow you to resolve critical construction issues early, correctly, and effectively debug problems.",
    name: "book",
    imgpath: "assets/images/8.jpg",
    price: 612.99,
  ),
  item(
    text:
        "Soft Skills: The Software Developer’s Life is a reference book written by Manual John. It is a guide to a well-rounded, satisfying life as a software development professional. For that, developer and life author advise software engineers on important subjects like career and productivity, personal finance and investing, and fitness and relationships.It has been arranged as a collection of 71 short chapters. This book helps you to make a better programmer and enhance your software engineering skill.",
    name: "book",
    imgpath: "assets/images/9.jpg",
    price: 129.99,
  ),
];
