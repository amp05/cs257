'''
   booksdatasourcetest.py
   Jeff Ondich, 24 September 2021
'''

from booksdatasource import Author, Book, BooksDataSource
import unittest

class BooksDataSourceTester(unittest.TestCase):
    def setUp(self):
        self.data_source = BooksDataSource('books1.csv')

    def tearDown(self):
        pass

    def test_unique_author(self):
        authors = self.data_source.authors('Pratchett')
        self.assertTrue(len(authors) == 1)
        self.assertTrue(authors[0] == Author('Pratchett', 'Terry'))

    def test_all_books(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books()
        self.assertTrue(len(books) == 3)
        self.assertTrue(books[0].title == 'Emma')
        self.assertTrue(books[1].title == 'Neverwhere')
        self.assertTrue(books[2].title == 'Omoo')

    def test_all_authors(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        authors = tiny_data_source.authors()
        self.assertTrue(len(authors) == 3)
        self.assertTrue(authors[0].surname == 'Austen')
        self.assertTrue(authors[1].title == 'Gaiman')
        self.assertTrue(authors[2].title == 'Melville')
    
    def test_no_authors(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        authors = tiny_data_source.authors("NO AUTHOR HAS THIS NAME")
        self.assertTrue(len(authors) == 0)

    def test_no_books(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        authors = tiny_data_source.books("NO BOOK HAS THIS NAME")
        self.assertTrue(len(authors) == 0)

    def test_one_book(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        authors = tiny_data_source.books("Emma")
        self.assertTrue(len(authors) == 1)

    def test_one_author(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        authors = tiny_data_source.author("Jane")
        self.assertTrue(len(authors) == 1)
    
    def test_no_book_between_years(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books_between_years(0, 1)
        self.assertTrue(len(books) == 0)

    def test_all_books_between_years(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books_between_years()
        self.assertTrue(len(books) == 3)
    
    def test_one_book_between_years(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books_between_years(1800, 1850)
        self.assertTrue(len(books) == 1)

    def test_no_year1_bby(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books_between_years(None, 1900)
        self.assertTrue(len(books) == 2)

    def test_no_year2_bby(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books_between_years(1830, None)
        self.assertTrue(len(books) == 2)



    
    
    







        





if __name__ == '__main__':
    unittest.main()