from booksdatasource import BooksDataSource
import argparse
import csv

#CS257 BOOOOOKS project
#written by Aldo Polanco and Michael Xia

def get_parsed_arguments():
    parser = argparse.ArgumentParser(description='find books!')
    parser.add_argument('function', metavar='function', help='sepcify the function you want this program to perform')
    parser.add_argument('--searchWord', metavar='searchWord', help='search the title that contains this word')
    parser.add_argument('--searchWord2', metavar='searchWord2', help='only useful when searching by year')
    parser.add_argument('--title', '-t', action='store_const', const=True, help='sort by title?')
    parser.add_argument('--year', '-y', action='store_const', const=True, help='sort by year?')
    parser.add_argument('--Help', '-H', action='store_const', const=True, help='want help?')
    parsed_arguments = parser.parse_args()
    return parsed_arguments

def get_list(arguments, books1_data):
    if (arguments.function).lower() == 'title':
        if (arguments.year and arguments.title):
            return False
            # added elif for when -t and -y are input as arguments
        elif arguments.year:
            return books1_data.books(arguments.searchWord, 'year')
        else:
            return books1_data.books(arguments.searchWord, 'title')
    elif (arguments.function).lower() == 'author':
        return books1_data.authors(arguments.searchWord)
    elif (arguments.function).lower() == 'year':
        return books1_data.books_between_years(arguments.searchWord, arguments.searchWord2)
    else:
        return False


def main():
    arguments = get_parsed_arguments()
    books1_data = BooksDataSource('books1.csv')
    if (arguments.Help or get_list(arguments, books1_data)==False): #added or, to direct user to Help.
        with open("usage.txt") as helptext:
            help = helptext.read()
            print(help)
    else:
        for i in get_list(arguments, books1_data):
            print(i)

if __name__ == '__main__':
    main()
