package com.fsnay.gt

class Member {

    Integer id
    String firstName
    String lastName
    String email
    String password
    String identityHash
    String memberType = GlobalConfig.USER_TYPE.REGULAR_MEMBER

    Long identityHashLastUpdate
    Boolean isActive

    static constraints = {
        email(email: true,unique: true,nullable: false,blank: false)
        firstName(nullable: false,blank: false)
        lastName(nullable: false,blank: false)
        password(nullable: false,blank: false)
    }
    static mapping = {
        table("user")
        version(false)
    }
    def beforeInsert(){
        this.password = this.password.encodeAsSHA256()
    }
    def beforeUpdate(){
        this.password = this.password.encodeAsSHA256()
    }
}
