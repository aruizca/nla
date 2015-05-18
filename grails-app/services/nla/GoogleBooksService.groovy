package nla

import grails.converters.JSON

import grails.transaction.Transactional
import groovyx.net.http.RESTClient
import groovyx.net.http.URIBuilder

@Transactional
class GoogleBooksService {

    final String API_KEY = "AIzaSyAYRHjgJ53ts_1naWImJN5OEotD93wm7oM"
    final RESTClient client = new RESTClient("https://www.googleapis.com")

    def getBookMetadataByIsbn_10(String isbn_10) {
        def response = client.get([
                path: "/books/v1/volumes",
                query: [
                        key: API_KEY,
                        q: "isbn:${isbn_10}"
                ]
        ])

        def bookMetadata = ""
        if (response.status == 200 && response.data.items.size() > 0) {
            bookMetadata = response.data.items[0]
        }
        return bookMetadata
    }
}
