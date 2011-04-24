import au.id.clancampbell.errors.Error

class BootStrap {

    def init = { servletContext ->
    	// Check whether the test data already exists.
	if (!Error.count()) {
		new Error(errorNum: 1, errorCat: 1, title: "Grails native2ascii error", opEnv: "Linux naaman-XPS-M1330 2.6.35-28-generic #50-Ubuntu SMP Fri Mar 18 18:42:20 UTC 2011 x86_64 GNU/Linux", errorMsg: "Error executing script RunApp: : Error starting Sun's native2ascii:", solution: "vi grails-app/conf/Config.groovy: grails.enable.native2ascii = false", urls: "http://devav2.blogspot.com/2009/08/grails-native2ascii-error.html").save(failOnError: true)
	}
    }
    def destroy = {
    }
}
