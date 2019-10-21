require("minitest/autorun")
require('minitest/rg')

require_relative('../Library.rb')


class TestLibrary < Minitest::Test

  def test_book_info
    books= [{
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      }]
    library = Library.new(books)
    assert_equal(books[0],library.book_info("lord_of_the_rings"))
  end

  def test_rental_details
    books= [{
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      }, {
          title: "Aresky on the moon",
          rental_details: {
           student_name: "Marcin",
           date: "01/12/19"
          }
        },{
            title: "Eduardo y Aresky",
            rental_details: {
             student_name: "God",
             date: "01/12/20"
            }
          }]
    library = Library.new(books)
    rental = {
     student_name: "God",
     date: "01/12/20"
    }

    assert_equal(rental, library.rental_details("Eduardo y Aresky"))

  end

  def test_add_book

    books= [{
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      }]

      library = Library.new(books)

      book =   {
          title: "Sapiens",
          rental_details: {
           student_name: "",
           date: ""
          }
        }

        assert_equal(book, library.add_book("Sapiens"))

  end

  def test_change_rental

    books= [{
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      }]

      library = Library.new(books)
      assert_equal([library.book_info("lord_of_the_rings")],library.change_rental("lord_of_the_rings","Aresky","10/10/10") )
end


end
