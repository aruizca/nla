package nla

import grails.transaction.Transactional

@Transactional
class MemberService {

    List<Member> initMembers() {
        Member member1 = new Member(
                name: "Angel Ruiz",
                email: "aruizca@gmail.com",
                phone: "0447513655"
        )
        member1.save()

        Member member2 = new Member(
                name: "Terence Ingram",
                email: "tingram@nla.gov.au",
                phone: "unknown"
        )
        member2.save()

        Member member3 = new Member(
                name: "David Wong",
                email: "dwong@nla.gov.au",
                phone: "unknown"
        )
        member3.save()

        return [member1, member2, member3]
    }
}
