package nla

import grails.test.spock.IntegrationSpec

class BookServiceIntegrationSpec extends IntegrationSpec {

    def bookService

    def setup() {
    }

    def cleanup() {
    }

    void "test saving a book from isbn 10"() {
        given:
        String isbn_10 = "1933988932"

        when:
        Book book = bookService.addBookFromIsbn_10(isbn_10)

        then:
        book.title == "Grails in Action"
        Book.count == 1

    }

    void "test initializing books at startup"() {
        when:
        List<Book> bookList = bookService.initBooks()

        then:
        bookList.size() == 14
        Book.count == 14
    }
}
