package grails.resources.reference.app

class ResourcesTestTagLib {

    static namespace = "rtest"

    def p = { attrs, body ->
        String name = attrs.name
        String desc = attrs.desc ?: ""
        out << "<p id=\"${name}\" class=\"test ${name}\">${name} <em>${desc}</em></p>"
    }

}
