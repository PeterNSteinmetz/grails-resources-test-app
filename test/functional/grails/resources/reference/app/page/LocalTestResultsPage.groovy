package grails.resources.reference.app.page

import geb.Page

class LocalTestResultsPage extends Page {

    static url = "localSpec"

    static at = { title == "Local resources specification"}

    static content = {
        testCases(wait: true) { $("p.test") }
    }
}
