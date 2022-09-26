#!/usr/bin/env python3
'''
    booksdatasource.py
    Jeff Ondich, 21 September 2022
    For use in the "books" assignment at the beginning of Carleton's
    CS 257 Software Design class, Fall 2022.
'''

import csv
from re import search
from tracemalloc import start

class Author:
    def __init__(self, surname='', given_name='', birth_year=None, death_year=None, books=[]):
        self.surname = surname
        self.given_name = given_name
        self.birth_year = birth_year
        self.death_year = death_year
        self.books = books

    def __eq__(self, other):
        ''' For simplicity, we're going to assume that no two authors have the same name. '''
        return self.surname == other.surname and self.given_name == other.given_name
    
    def __str__(self):
        return self.given_name + " " + self.surname + " (" + str(self.birth_year) + "-" + (str(self.death_year) if self.death_year != None else "") + ")"

class Book:
    def __init__(self, title='', publication_year=None, authors=[]):
        ''' Note that the self.authors instance variable is a list of
            references to Author objects. '''
        self.title = title
        self.publication_year = publication_year
        self.authors = authors

    def __eq__(self, other):
        ''' We're going to make the excessively simplifying assumption that
            no two books have the same title, so "same title" is the same
            thing as "same book". '''
        return self.title == other.title
    
    def __str__(self):
        return self.title + "," + str(self.publication_year)


class BooksDataSource:

    def __init__(self, books_csv_file_name):
        ''' The books CSV file format looks like this:
                title,publication_year,author_description
            For example:
                All Clear,2010,Connie Willis (1945-)
                "Right Ho, Jeeves",1934,Pelham Grenville Wodehouse (1881-1975)
            This __init__ method parses the specified CSV file and creates
            suitable instance variables for the BooksDataSource object containing
            a collection of Author objects and a collection of Book objects.
        '''
        self.bks = []
        self.auths = []
        with open(books_csv_file_name) as source:
            for line in source.readlines():
                splitline = line.split(",")
                book = Book(splitline[0], int(splitline[1]))
                if book not in self.bks:
                    self.bks.append(book)
                for author in splitline[2:]:
                    author = author.split(" ")
                    givenname = author[0]
                    surname = " ".join(author[1:-1])
                    years = author[-1].strip("()\n").split("-")
                    birthyear = int(years[0])
                    deathyear = int(years[1]) if years[1] != "" else None 
                    author = Author(givenname, surname, birthyear, deathyear, [book,])
                    if author not in self.auths:
                        self.auths.append(author)
                        book.authors.append(author)
                    elif author in self.author:
                        author.books.append(book)
                        book.authors.append(author)

    def authors(self, search_text=None):
        ''' Returns a list of all the Author objects in this data source whose names contain
            (case-insensitively) the search text. If search_text is None, then this method
            returns all of the Author objects. In either case, the returned list is sorted
            by surname, breaking ties using given name (e.g. Ann Brontë comes before Charlotte Brontë).
        '''
        toReturn = []
        if search_text != None:
            for author in self.auths:
                if search_text.lower() in (author.given_name + " " + author.surname).lower():
                    toReturn.append(author)
            return sorted(toReturn, key=lambda author: (author.surname, author.given_name))
        else:
            return sorted(self.auths, key=lambda author: (author.surname, author.given_name))

    def books(self, search_text=None, sort_by='title'):
        ''' Returns a list of all the Book objects in this data source whose
            titles contain (case-insensitively) search_text. If search_text is None,
            then this method returns all of the books objects.
            The list of books is sorted in an order depending on the sort_by parameter:
                'year' -- sorts by publication_year, breaking ties with (case-insenstive) title
                'title' -- sorts by (case-insensitive) title, breaking ties with publication_year
                default -- same as 'title' (that is, if sort_by is anything other than 'year'
                            or 'title', just do the same thing you would do for 'title')
        '''
        toReturn = []
        if search_text != None:
            for book in self.bks:
                if search_text.lower() in book.title.lower():
                    toReturn.append(book)
        else:
            toReturn = self.bks
        
        if sort_by == "year":
            return sorted(toReturn, key=lambda book: (book.publication_year, book.title))
        else:
            return sorted(toReturn, key=lambda book: (book.title.lower(), book.publication_year))

    def books_between_years(self, start_year=None, end_year=None):
        ''' Returns a list of all the Book objects in this data source whose publication
            years are between start_year and end_year, inclusive. The list is sorted
            by publication year, breaking ties by title (e.g. Neverwhere 1996 should
            come before Thief of Time 1996).
            If start_year is None, then any book published before or during end_year
            should be included. If end_year is None, then any book published after or
            during start_year should be included. If both are None, then all books
            should be included.
        '''
        toReturn = []
        start = 0 if start_year == None else start_year
        end = 99999 if end_year == None else end_year
        for book in self.bks:
            if book.publication_year >= start and book.publication_year <= end:
                toReturn.append(book)
        return sorted(toReturn, key=lambda book: (book.publication_year, book.title))