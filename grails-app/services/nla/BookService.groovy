package nla

import grails.converters.JSON
import grails.transaction.Transactional

@Transactional
class BookService {

    GoogleBooksService googleBooksService

    List<Book> initBooks() {
        List<String> myLibraryOnIsbn_10 = [
                "1933988932", // Grails in Action, 2nd edition
                "1935182447", // Groovy in Action
                "1617291021", // Solr in Action
                "0981531601", // Programming in Scala
                "1617290653", // Functional Programming in Scala
                "1449355870", // AngularJS
                "1449305350", // Jenkins: the definitive guide
                "1430226323", // Spring persistence with Hibernate
                "193239415X", // Hibernate in Action
                "1430241071", // Pro Spring 3
                "1430259094", // Spring recipes
                "1430241551", // Pro Spring MVC
                "0132350882", // Clean code
                "1934356212", // Stripes

        ]

        myLibraryOnIsbn_10.collect { isbn_10 ->
            addBookFromIsbn_10(isbn_10)
        }
    }

    Book addBookFromIsbn_10(isbn_10) {
        def bookMetadata = googleBooksService.getBookMetadataByIsbn_10(isbn_10)
        return new Book(
                title: bookMetadata?.volumeInfo?.title,
                author: bookMetadata?.volumeInfo?.authors?.join(", "),
                isbn_10: isbn_10,
                coverUrl: bookMetadata?.volumeInfo?.imageLinks?.thumbnail,
                description: bookMetadata?.volumeInfo?.description,
                publicationYear: bookMetadata?.volumeInfo?.publishedDate,
                publisher: bookMetadata?.volumeInfo?.publisher
        ).save()
    }
}
