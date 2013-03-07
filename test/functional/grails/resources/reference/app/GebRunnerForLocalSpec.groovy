package grails.resources.reference.app

import geb.content.SimplePageContent
import geb.navigator.Navigator
import geb.spock.GebReportingSpec
import grails.resources.reference.app.page.LocalTestResultsPage
import org.openqa.selenium.htmlunit.HtmlUnitDriver
import spock.lang.Unroll

class GebRunnerForLocalSpec extends GebReportingSpec {

    static greenColors = ['rgb(170, 187, 119)', '#aabb77'] // TODO: get from config and standardise: hex or rgb

    def "Test cases loading fine"() {

        when: def cases = loadTestCases()

        then:
            at LocalTestResultsPage
            cases.size() // TODO: any better assumption?
    }

    @Unroll("Checking test case: #name - #result")
    def "All local tests are green"() {

        expect: passed

        where:
            testCase << loadTestCases()
            name = testCase.text()
            passed = isGreen(testCase)
            result = passed ? 'PASSED' : 'FAILED'
    }

    private SimplePageContent loadTestCases() {
        if (browser.driver instanceof HtmlUnitDriver) {
            (browser.driver as HtmlUnitDriver).javascriptEnabled = true
        }
        browser.to LocalTestResultsPage
        browser.testCases
    }

    private boolean isGreen(Navigator testCase) {
        testCase?.jquery?.css('background-color') in greenColors
    }
}
