

class Library

def  initialize(books)
  @books = books
end


def book_info(book_name)
  @books.each{|book| return book if book[:title] == book_name}
end

def rental_details(book_name)
  @books.each{|book|  return book[:rental_details] if book[:title] == book_name}
end

def add_book(title)
book =   {
    title: title,
    rental_details: {
     student_name: "",
     date: ""
    }
  }
  @books.push(book)

  return book

end



 def change_rental(book_name,student_name,date)

   for book in @books

      book[:rental_details][:student_name] = student_name if book[:title] == book_name
      book[:rental_details][:date] = date if book[:title] == book_name

    end

 end


end
