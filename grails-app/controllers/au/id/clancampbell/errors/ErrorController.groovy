package au.id.clancampbell.errors

import grails.plugins.springsecurity.Secured

class ErrorController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [errorInstanceList: Error.list(params), errorInstanceTotal: Error.count()]
    }

    def create = {
        def errorInstance = new Error()
        errorInstance.properties = params
        return [errorInstance: errorInstance]
    }

    def save = {
        def errorInstance = new Error(params)
        if (errorInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'error.label', default: 'Error'), errorInstance.id])}"
            redirect(action: "show", id: errorInstance.id)
        }
        else {
            render(view: "create", model: [errorInstance: errorInstance])
        }
    }

    def show = {
        def errorInstance = Error.get(params.id)
        if (!errorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'error.label', default: 'Error'), params.id])}"
            redirect(action: "list")
        }
        else {
            [errorInstance: errorInstance]
        }
    }

    @Secured(['ROLE_USER','IS_AUTHENTICATED_REMEMBERED'])
    def edit = {
        def errorInstance = Error.get(params.id)
        if (!errorInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'error.label', default: 'Error'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [errorInstance: errorInstance]
        }
    }

    @Secured(['ROLE_USER','IS_AUTHENTICATED_REMEMBERED'])
    def update = {
        def errorInstance = Error.get(params.id)
        if (errorInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (errorInstance.version > version) {
                    
                    errorInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'error.label', default: 'Error')] as Object[], "Another user has updated this Error while you were editing")
                    render(view: "edit", model: [errorInstance: errorInstance])
                    return
                }
            }
            errorInstance.properties = params
            if (!errorInstance.hasErrors() && errorInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'error.label', default: 'Error'), errorInstance.id])}"
                redirect(action: "show", id: errorInstance.id)
            }
            else {
                render(view: "edit", model: [errorInstance: errorInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'error.label', default: 'Error'), params.id])}"
            redirect(action: "list")
        }
    }

    @Secured(['ROLE_ADMIN','IS_AUTHENTICATED_REMEMBERED'])
    def delete = {
        def errorInstance = Error.get(params.id)
        if (errorInstance) {
            try {
                errorInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'error.label', default: 'Error'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'error.label', default: 'Error'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'error.label', default: 'Error'), params.id])}"
            redirect(action: "list")
        }
    }
}
