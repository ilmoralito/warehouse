import ni.edu.uccleon.*

class BootStrap {

    def init = { servletContext ->
    	def adminRole = new Role(authority: 'ROLE_ADMIN').save()
    	def userRole = new Role(authority: 'ROLE_USER').save()
    	def supervisorRole = new Role(authority: 'ROLE_SUPERVISOR').save()

		def admin = new User(username: 'admin', fullName:"Juan Perez", password: 'admin').save()
		def user = new User(username: 'user', fullName:"John Doe", password: 'user').save()
		def supervisor = new User(username: 'supervisor', fullName:"Fulano", password: 'supervisor').save()

		UserRole.create admin, adminRole, true
		UserRole.create user, userRole, true
		UserRole.create supervisor, supervisorRole, true

		assert User.count() == 3
		assert Role.count() == 3
		assert UserRole.count() == 3
    }
    def destroy = {
    }
}
