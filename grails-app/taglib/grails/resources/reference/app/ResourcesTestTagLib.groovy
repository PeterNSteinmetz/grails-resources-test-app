package grails.resources.reference.app

class ResourcesTestTagLib {

    static namespace = "rtest"

    def p = { attrs, body ->
        String name = attrs.name
        out << "<p id=\"${name}\" class=\"${name}\">${name}</p>"
    }

}
