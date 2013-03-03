import geb.spock.GebReportingSpec
import pages.*

/**
 * Spock test specification for tests of localSpec page.
 *
 * @author Peter N. Steinmetz
 * Date: 3/3/13
 * Time: 2:27 PM
 */
class LocalSpecPageSpec extends GebReportingSpec {

  def "check title"() {
    when:
    to LocalSpecPage

    then:
    title.contains("extra")
  }
}
