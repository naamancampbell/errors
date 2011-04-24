dataSource {
    pooled = true
    driverClassName = "org.hsqldb.jdbcDriver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update"
	    driverClassName = "com.mysql.jdbc.Driver"
            url = "jdbc:mysql://localhost/errorsdev"
            username = "errors"
            password = "e33ors"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
	    driverClassName = "com.mysql.jdbc.Driver"
            url = "jdbc:mysql://localhost/errors"
            username = "errors"
            password = "e33ors"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
	    driverClassName = "com.mysql.jdbc.Driver"
            url = "jdbc:mysql://localhost/errors"
            username = "errors"
            password = "e33ors"
        }
    }
}
