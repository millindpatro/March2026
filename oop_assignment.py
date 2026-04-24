class Movie:
    def __init__(self,title,director,year,rating):
        self.title = title
        self.director = director
        self.year = year
        self.rating = rating

        pass

    def display_info(self):
        print(f'{self.title} ({self.year}), directed by {self.director}, Rating: {self.rating}')

    def update_rating(self):
        self.new_reading = int(input("Enter Rating between 0 to 10:"))
        self.rating=self.new_reading

    def is_classic(self):
        if(self.year<2000):
            return True
        else:
            return False


movie1=Movie('Inception','Christopher Nolan',2010,8.8)
movie1.display_info()
movie1.update_rating()
movie1.display_info()
movie1.is_classic()


######################


class Library:
    def __init__(self):
        self.books=[]
    def add_book(self,title,author):
        self.books.append(f'{title}')

    def remove_book(self,book):
        for i in self.books:
            if(str.lower(i)==str.lower(book)):
                self.books.remove(i)
                break
            else:
                print("Book not found")

    def display_book(self):
        if len(self.books)==0:
            print("No books")
        for i in range(0,len(self.books)):
            print(self.books[i])


    def find_book(self,book):
        flag=0
        for i in self.books:
            if(str.lower(i)==str.lower(book)):
                print(f'Book found - {book}')
                flag=1
                break
        if(flag==0):
            print('Book not found')

book1=Library()
book1.add_book('Twilight','author')
book1.add_book('test','author')
book1.remove_book('Twilight')
book1.display_book()
book1.find_book('twilight')
