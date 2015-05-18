package nla

class Member {
    String name, phone, email

    static hasMany = [booksLent: Book]

    static constraints = {
        name blank: false
        phone blank: false
        email blank: false, email: true
    }

    static mapping = {
        sort name: "asc"
    }
}
