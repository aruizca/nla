package nla

import grails.test.spock.IntegrationSpec

class GoogleBooksServiceIntegrationSpec extends IntegrationSpec {

    def googleBooksService

    def setup() {
    }

    def cleanup() {
    }

    void "test getting book metadata by Isbn"() {
        given:
        String isbn_10 = "1933988932"

        when:
        def bookMetadata = googleBooksService.getBookMetadataByIsbn_10(isbn_10)

        then:
        !bookMetadata.isEmpty()
        bookMetadata.volumeInfo.title == "Grails in Action"
    }
}
