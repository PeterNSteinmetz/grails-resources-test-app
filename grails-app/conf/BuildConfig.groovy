def resourcesPluginVersion = System.getProperty('resources.version')
def resourcesPluginLocation = System.getProperty('resources.location')
if (resourcesPluginLocation && resourcesPluginVersion) {
    throw new IllegalArgumentException('Specify resources.ver OR resources.loc')
} else if (resourcesPluginLocation) {
    println "| Using Resources plugin from specified location: $resourcesPluginLocation"
} else if (resourcesPluginVersion) {
    println "| Using resources plugin specified version: $resourcesPluginVersion"
} else {
    resourcesPluginVersion = '1.2.RC2' // current release
    println "| Using resources plugin default version: $resourcesPluginVersion"
}

grails.servlet.version = "2.5" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.target.level = 1.6
grails.project.source.level = 1.6
//grails.project.war.file = "target/${appName}-${appVersion}.war"

grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // specify dependency exclusions here; for example, uncomment this to disable ehcache:
        // excludes 'ehcache'
    }
    log "error" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    checksums true // Whether to verify checksums on resolve
    legacyResolve true // whether to do a secondary resolve on plugin installation, not advised but here for backwards compatibility

    repositories {
        inherits true // Whether to inherit repository definitions from plugins

        grailsPlugins()
        grailsHome()
        grailsCentral()

        mavenLocal()
        mavenCentral()

        // uncomment these (or add new ones) to enable remote dependency resolution from public Maven repositories
        //mavenRepo "http://snapshots.repository.codehaus.org"
        //mavenRepo "http://repository.codehaus.org"
        //mavenRepo "http://download.java.net/maven/2/"
        //mavenRepo "http://repository.jboss.com/maven2/"
    }
    dependencies {
        // specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes eg.

        // runtime 'mysql:mysql-connector-java:5.1.20'
    }

    plugins {
        // runtime ":hibernate:$grailsVersion" // not necessary?
        runtime ":jquery:1.8.0"

        if (!resourcesPluginLocation) {
            runtime ":resources:$resourcesPluginVersion"
        }

        build ":tomcat:$grailsVersion"
        compile ":geb:0.9.0-RC-1"

    }
}

if (resourcesPluginLocation) {
    grails.plugin.location.resources = resourcesPluginLocation
}
