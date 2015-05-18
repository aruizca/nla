package nla

class MemberController {

    def index() {
        [members: Member.list()]
    }

    def memberDetail() {
        Member member = Member.get(params.id)
        render template: 'memberDetailDialog', model: [member:member]
    }
}
