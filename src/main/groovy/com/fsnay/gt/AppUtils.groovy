package com.fsnay.gt

import org.grails.web.util.WebUtils

class AppUtils {

    static saveResponse(Boolean isSuccess, def model){
        return [isSuccess: isSuccess, model:model]
    }

    static getAppSession(){
        return WebUtils.retrieveGrailsWebRequest().session
    }

    static infoMessage(String msg,boolean status = true){
        return [info:msg, success:status]
    }
}
