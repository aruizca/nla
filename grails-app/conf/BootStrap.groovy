import nla.Book
import nla.Member

class BootStrap {

    def bookService
    def memberService

    def init = { servletContext ->
        log.info("Initializing books...")
        List<Book> bookList = bookService.initBooks()

        log.info("Initializing members...")
        List<Member> memberList = memberService.initMembers()

        log.info("Initializing random book lendings...")
        initRandomLend(bookList, memberList)
    }
    def destroy = {
    }

    void initRandomLend(List<Book> bookList, List<Member> memberList) {
        Random random = new Random()
        memberList.each {member ->
            // A member can be lent a maximum of three books
            int maxNumberBooksToLend = random.nextInt(2) + 1
            (1..maxNumberBooksToLend).each {
                Book book = bookList.get(random.nextInt(bookList.size()-1))
                // Assumes only one copy of the book is available for lending
                bookList.remove(book)
                book.isLent=true
                if (member.booksLent) {
                    member.booksLent.add(book)
                } else {
                    member.booksLent = [book] as Set
                }
            }
            member.save()
        }

    }

}
