class Person:
    def __init__(self,name,age,gender,city,phone):
        self.name=name
        self.age=age
        self.gender=gender
        self.city=city
        self.phone=phone

    def show_details(self):
        print(f'Name : {self.name} , Age: {self.age}, Gender: {self.gender} , City: {self.city}, Phone no:{self.phone}')

    def introduce(self):
        print(f'Hi, My name is {self.name} and I am from {self.city}')

    def updatee(self,nphone):
        self.phone=nphone
        print(f'new phone no : {self.phone}')
        
        
class Student(Person):
    def __init__(self,name,age,gender,city,phone,student_id,dept,course,sem,marks,college_name):
        super().__init__(name,age,gender,city,phone)
        self.student_id=student_id
        self.dept=dept
        self.course=course
        self.sem=sem
        self.marks=marks
        self.college_name=college_name

    def show_details(self):
        print(f'{self.student_id},{self.dept},{self.course},{self.sem},{self.marks},{self.college_name}')

    def calculate_grade(self):
        if(self.marks>90):
            print("A")
        elif(self.marks>80):
            print('B')
        elif(self.marks>70):
            print('C')
        elif(self.marks >60):
            print('D')
        elif(self.marks>50):
            print('E')
        elif(self.marks<=40):
            print('Fail')
    
    def check_pass(self):
        if(self.marks>40):
            print('Pass')
        else:
            print('Fail')
    
    def update_sem(self,newsem):
        self.sem=newsem
        print(f'semester updated to {self.sem}')
    def show_marks(self):
        print(f'Marks: {self.marks}')    


class GraduateStudent(Student):
    def __init__(self,name,age,gender,city,phone,student_id,dept,course,sem,marks,college_name,research_topic,guide_name,thesis_title,specialization,publication_count,):
        super().__init__(name,age,gender,city,phone,student_id,dept,course,sem,marks,college_name)
        self.research_topic=research_topic
        self.guide_name=guide_name
        self.thesis_title=thesis_title
        self.specialization=specialization
        self.publication_count=publication_count

    def research_deatils(self):
        print(f'topic: {self.research_topic}, guide name: {self.guide_name}, thesis: {self.thesis_title}, specialization: {self.specialization}, publication count: {self.publication_count}' )

    def show_specialization(self):
        print(f'Specialization: {self.specialization}')

    
