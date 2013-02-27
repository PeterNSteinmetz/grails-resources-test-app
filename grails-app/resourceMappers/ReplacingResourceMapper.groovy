import org.grails.plugin.resource.ResourceMeta
import org.grails.plugin.resource.mapper.MapperPhase

class ReplacingResourceMapper {

    private static String RESOURCE_FILENAME = 'disableResourceMapperViaConfig.css'
    private static String REPLACE_WHAT = '#aabb77'
    private static String REPLACE_WITH = '#cf867e'

    def phase = MapperPhase.MUTATION

    void map(ResourceMeta resource, Map config) {
        if (resource.processedFile?.name == RESOURCE_FILENAME) {
            resource.processedFile.text = resource.processedFile.text.replaceAll(REPLACE_WHAT, REPLACE_WITH)
        }
    }

}
