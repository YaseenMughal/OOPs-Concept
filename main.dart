

// Example 01:
void main() {
  Person person = Person();
  Person person1 = Person();

  person.name = "Yaseen Mughal";
  person.fatherName = "Ismail Mughal";
  person.age = 19;

  person1.name = "Aamir Mughal";
  person1.fatherName = "Ismail Mughal";
  person1.age = 35;

  person.displayInfo(); // Add parentheses to call the method
  person1.displayInfo(); // Add parentheses to call the method
}

class Person {
  String? name;
  String? fatherName;
  int? age;

void displayInfo() {
  print('My name is ${name}');
  print('My FatherName is ${fatherName}');
  print('My age is ${age}');
  print('----------------------');
}
}



// Example 02:
void main() {
  StudentData studentData1 = StudentData();
  StudentData studentData2 = StudentData();

  studentData1.name = "Kamran Malik";
  studentData1.age = 16;
  studentData1.id = 7865;
  studentData1.grade = 'C';

  studentData2.name = "Junaid Niazi";
  studentData2.age = 18;
  studentData2.id = 9756;
  studentData2.grade = 'B';

  studentData1.displayInfo();
  studentData1.updateGrade('A');

  studentData2.displayInfo();
  studentData2.updateGrade('A+');

}

class StudentData {
  String? name;
  int? id;
  int? age;
  String? grade;

void displayInfo() {
  print('Student name is ${name}');
  print('Student-Id is ${id}');
  print('Student age is ${age}');
  print('Student grade is ${grade}');
  print('----------------------');
}

  void updateGrade(String newGrade) {
    grade = newGrade;
    print('Grade updated to $newGrade to $name');
  }
}


// Example 03:
void main() {
  Area area = Area();

  area.calculateRectangleArea(5, 5);
}

class Area {
  double? height;
  double? width;

  void calculateRectangleArea(double height, double width) {
    try {
      double areaOfRectangle = height * width;
      print(width);
      print('Area: ' + areaOfRectangle.toString());
    } catch (e) {
      print(e);
      // log(e.toString());
    }
  }
}



// Example 04:
void main() {
  // Student student = Student('Ali', 22);
  // Student student1 = Student('Ahmed', 55);
  // Student student2 = Student('Haroon', 68);
  // Student student3 = Student('Hasnain', 12);

  // student.displayInfo();
  // student1.displayInfo();
  // student2.displayInfo();
  // student3.displayInfo();

  List<Student> studentData = [
    Student('Ahmed', 55),
    Student('Haroon', 68),
    Student('Hasnain', 12),
    Student('Arhan', 24),
    Student('Qazi', 57),
    Student('Junaid', 10),
    Student('Akram', 98),
    Student('Iftikhar', 53),
    Student('Haris', 44),
  ];

  studentData.forEach((element) {
    print('Student Name : ${element.name} || Student Age : ${element.age}');
  });
}

class Student {
  String? name;
  int? age;

  Student(String name, int age) {
    print('Constructor Call');
    this.name = name;
    this.age = age;
  }

  void displayInfo() {
    print('----------------------');
    print('Student Name : ${name}');
    print('Student Age : ${age}');
    print('----------------------');
  }
}



// Example 05:
void main() {
  List<Student> studentData = [
    Student( age: 50, email: "ahmed@gmail.com"),
    Student(name: 'Haroon', age: 68, email: 'haroon@gmail.com'),
    Student( age: 12, email: 'hasnain@gmail.com'),
    Student(name: 'Arhan', email: 'arhan@gmail.com'),
    Student(name: 'Qazi', age: 57, email: 'qazi@gmail.com'),
    Student(name: 'Junaid', email: 'junaid@gmail.com'),
    Student( age: 98, email: 'akram@gmail.com'),
    Student(name: 'Iftikhar', age: 53, email: 'iftikhar@gmail.com'),
    Student(name: 'Haris',  email: 'haris@gmail.com'),
  ];

  studentData.forEach((element) {
    print('''
     Student Name: ${element.name}
     Student Age: ${element.age}
     Student Email: ${element.email}
     ''');
  });
}

class Student {
  String? name;
  int? age;
  String? email;

  Student({this.name = 'Person', this.age = 0, required this.email}) {
    print('Constructor Call');

  }

  void displayInfo() {
    print('----------------------');
    print('Student Name: ${name}');
    print('Student Age: ${age}');
    print('Student Email: ${email}');
    print('----------------------');
  }
}



// Example 06:
void main() {
  Book book1 = Book(title: 'Pride and Prejudice', author: 'Jane Austen', isbn: '123456', isAvailable: true);
  Book book2 = Book(title: 'Great Expectations', author: 'Charles Dickens', isbn: '123475', isAvailable: true);
  Book book3 = Book(title: 'The Adventures of Huckleberry Finn', author: 'Mark Twain', isbn: '123495', isAvailable: true);
  Book book4 = Book(title: 'War and Peace', author: 'Leo Tolstoy', isbn: '1965732', isAvailable: true);
  Book book5 = Book(title: 'Crime and Punishment', author: 'Fyodor Dostoevsky', isbn: '8569321', isAvailable: true);

  Library library = Library();

  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);
  library.addBook(book4);
  library.addBook(book5);

  library.listBook();

  Member member1 = Member('Junaid Mughal', 'M45896');
  Member member2 = Member('Daniyal Saleem', 'M14296');
  Member member3 = Member('Asif Taj', 'M96596');

  library.loansBook(book2, member1);
  library.loansBook(book4, member2);
  library.loansBook(book1, member3);

  library.listBook();

  library.bookInMember();
}

class Book {
  String? title;
  String? author;
  String? isbn;
  bool isAvailable;

  Book({required this.title, required this.author, required this.isbn, required this.isAvailable});
}

class Library {
  List<Book> books = [];
  List<Loan> loans = [];
  List<Loan> members = [];

  void addBook(Book book) {
    books.add(book);
  }

  void listBook() {
    print('-----List All Books In Library-----');
    for (var book in books) {
      print('Title: ${book.title} | Author: ${book.author} | ISBN: ${book.isbn} | IsAvailable: ${book.isAvailable}');
    }
  }

  void bookInMember() {
    print('-----List All Books In Member Hand-----');
    for (var loan in loans) {
      print('Member Name: ${loan.member.name} | Book Name: ${loan.book.title} | Book ISBN number: ${loan.book.isbn}');
    }
  }

  void loansBook(Book book, Member member) {
    if (book.isAvailable) {
      book.isAvailable = false;
      loans.add(Loan(book, member, DateTime.now()));
    } else {
      print('${book.title} is not available');
    }
  }
}

class Member {
  String? name;
  String? memberId;

  Member(this.name, this.memberId);
}

class Loan {
  Book book;
  Member member;
  DateTime loanDate;
  DateTime? returnDate;

  Loan(this.book, this.member, this.loanDate, [this.returnDate]);

  void returnBook() {
    returnDate = DateTime.now();
    book.isAvailable = true;
  }
}


// Example 07: [Encapsulation Method]
import 'person.dart';

void main() {
  Person person = Person('Asghar Ali', 45);
  person.displayInfo();
  person.setName = 'Junaid Niazi';
  person.setAge = 25;
  print(person.name);
  print(person.age);
}


// Example 08:
void main() {

  Teacher teacher = Teacher();

  teacher.name = 'Asif Taj';
  teacher.age = 25;
  teacher.regNumber = 6894;
  teacher.semester = '8th & Final Semester';
  teacher.teacherName = 'Taj Gul';
  teacher.subject = 'MATHEMATICS';

  teacher.displayPerson();
  teacher.displayStudentInfo();
  teacher.displayTeacherInfo();

}

class Person {
  String? name;
  int? age;

  // Person(this.name, this.age);

  void displayPerson() {
    print("Student Name: ${name}");
    print("Student Age: ${age}");
  }
}

class Student extends Person {
  int? regNumber;
  String? semester;

  void displayStudentInfo() {
    print("Semester: ${semester}");
    print("Registration No: ${regNumber}");
  }
}

class Teacher extends Student implements Person   {
  String? teacherName;
  String? subject;

  void displayTeacherInfo() {
    print('Teacher Name: ${teacherName}');
    print('Subject Name: ${subject}');
  }
}
