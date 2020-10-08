package com.fsnay

import com.fsnay.gt.AppUtils
import com.fsnay.gt.GlobalConfig
import com.fsnay.gt.Member
import grails.web.servlet.mvc.GrailsParameterMap


class MemberService {

    def getById(Serializable id) {
        Member member = Member.get(id)
        return member
    }

    def save(GrailsParameterMap params){
        Member member = new Member(params)
        def response = AppUtils.saveResponse(false,member)
        if(member.validate()){
            member.save(flush:true)
            if(!member.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def update(Member member, GrailsParameterMap params){
        member.properties = params
        def response = AppUtils.saveResponse(false,member)
        if(member.validate()){
            member.save(flush:true)
            if(!member.hasErrors()){
                response.isSuccess = true
            }
        }
        return response
    }

    def delete(Member member){
        def response = AppUtils.saveResponse(false,member)
        try{
            member.delete(flush: true)
            response.isSuccess = true
            response.member = null
        }
        catch(Exception e){
            log.error("Erro ao deletar membro: ${e.message}")
            response.isSuccess = false
        }
        return response
    }

    def list(GrailsParameterMap params){
        params.max = params.max ?: GlobalConfig.itensPerPage()
        List<Member> memberList = Member.createCriteria().list(params){
            if(params?.colName && params?.colValue){
                like(params.colName,"%" + params.colValue + "%")
            }
            if(!params.sort){
                order("id","desc")
            }
        }

        return[list:memberList,count: Member.count()]
    }
}
