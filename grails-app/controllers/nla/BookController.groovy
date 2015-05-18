package nla

class BookController {

    def index() {
        [books: Book.list()]
    }

    def bookDetail() {
        Book book = Book.get(params.id)
        render template: 'bookDetailDialog', model: [book:book]
    }
}
