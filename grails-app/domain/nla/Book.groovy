package nla

class Book {

    String title, author, isbn_10, coverUrl, publisher, publicationYear,description
    Boolean isLent = false

    static constraints = {
        title blank: false
        author blank: false
        isbn_10 blank: false
        description maxSize: 5000
        coverUrl nullable: true
        publisher nullable: true
        publicationYear nullable: true
        description nullable: true
    }

    static mapping = {
        sort title: "asc"
    }
}
