package ni.edu.uccleon

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class UserController {

	static defaultAction = "list"
	static allowedMethods = [
		list:"GET"
	]

    def list() {
    	def users = User.list()

    	[users:users]
    }
}
