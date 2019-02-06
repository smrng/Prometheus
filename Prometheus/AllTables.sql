create schema Prometheus
 -- create teacher table------
create table Prometheus.Teacher(TeacherID int primary key identity(100,1), FName varchar(50) not null, LName varchar(50) not null , Address varchar(50) not null, DOB datetime not null , City varchar(50) not null, Password varchar(50) not null,MobileNo bigint not null, IsAdmin varchar(50))

---create student table---

 create table Prometheus.Student( StudentID  int primary key identity(1,1), FName varchar(50) not null,LName varchar(50) not null, Address varchar(50) not null, DOB datetime not null, City varchar(50) not null, Password varchar(50) not null, MobileNo bigint not null)

 --create Course table----

 create table Prometheus.Course(CourseID int primary key identity(1,1), CourseName varchar(50) not null , StartDate datetime not null, EndDate datetime not null)

 create table Prometheus.Teaches(TeacherID int,CourseID int,constraint fk_teacherid foreign key (TeacherID) references Prometheus.Teacher(TeacherID),
 constraint fk_courseid foreign key (CourseID) references Prometheus.Course(CourseID))

 create table Prometheus.Enrollment(CourseID int , StudentID int ,constraint fk_courseid1 foreign key (CourseID) references Prometheus.Course(CourseID),
 constraint fk_studentid foreign key (StudentID) references Prometheus.Student(StudentID))

 create table  Prometheus.Homework(HomeWorkID int primary key identity(1,1),Description varchar(250) not null, Deadline datetime not null, ReqTime datetime not null, LongDescription varchar(250) not null)

create table Prometheus.Assignment(HomeWorkID int, TeacherID int, CourseID int,constraint fk_homeworkid foreign key (HomeworkID) references Prometheus.Homework(HomeworkID),constraint fk_teacherid1 foreign key (TeacherID) references Prometheus.Teacher(TeacherID),constraint fk_courseid2 foreign key (CourseID) references Prometheus.Course(CourseID))