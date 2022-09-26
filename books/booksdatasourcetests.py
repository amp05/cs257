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
        books = tiny_data_source.books("NO BOOK HAS THIS NAME")
        self.assertTrue(len(books) == 0)

    def test_one_book(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books("Emma")
        self.assertTrue(len(books) == 1)

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

    def test_books_search_sort_by_title(self):
        books1_data_source = BooksDataSource('books1.csv')
        books = books1_data_source.books('love', 'title')
        self.assertTrue(len(books) == 2)
        self.assertTrue(books[0].title == 'Beloved')
        self.assertTrue(books[1].title == 'Love in the Time of Cholera')

    def test_books_search_sort_by_year(self):
        books1_data_source = BooksDataSource('books1.csv')
        books = books1_data_source.books('love', 'year')
        self.assertTrue(len(books) == 2)
        self.assertTrue(books[0].title == 'Love in the Time of Cholera')
        self.assertTrue(books[1].title == 'Beloved')

    def test_books_search_sort_by_title_tie(self):
        tieBooks_data_source = BooksDataSource('tieBooks1.csv')
        books = tieBooks_data_source.books('love', 'title')
        self.assertTrue(len(books) == 3)
        self.assertTrue(books[0].authors == 'Aldo Polanco')
        self.assertTrue(books[1].authors == 'Jeff Ondich')
        self.assertTrue(books[2].authors == 'Michael Xia')

    def test_books_search_sort_by_year_tie(self):
        tieBooks_data_source = BooksDataSource('tieBooks1.csv')
        books = tieBooks_data_source.books('love', 'year')
        self.assertTrue(len(books) == 3)
        self.assertTrue(books[0].authors == 'Jeff Ondich')
        self.assertTrue(books[1].authors == 'Aldo Polanco')
        self.assertTrue(books[2].authors == 'Michael Xia')

    def test_books_search_authors_tie(self):
        books1_data_source = BooksDataSource('books1.csv')
        authors = books1_data_source.authors('Brontë')
        self.assertTrue(len(authors) == 3)
        self.assertTrue(authors[0].given_name == 'Ann')
        self.assertTrue(authors[1].given_name == 'Charlotte')
        self.assertTrue(authors[2].given_name == 'Emily')

    def test_books_search_authors(self):
        books1_data_source = BooksDataSource('books1.csv')
        authors = books1_data_source.authors('To')
        self.assertTrue(len(authors) == 2)
        self.assertTrue(authors[0].surname == 'Morrison')
        self.assertTrue(authors[1].surname == 'Orange')
    
    def test_books_search_between_years(self):
        books1_data_source = BooksDataSource('books1.csv')
        authors = books1_data_source.books_between_years('1930', '1980')
        self.assertTrue(len(authors) == 2)
        self.assertTrue(authors[0].surname == 'Morrison')
        self.assertTrue(authors[1].surname == 'Orange')




if __name__ == '__main__':
    unittest.main()