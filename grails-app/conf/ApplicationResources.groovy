modules = {
    application {
        resource url:'js/application.js'
    }

    oneEntryCss {
        resource url: 'css/oneEntryCss.css'
    }

    manyEntriesCss {
        resource url: 'css/manyEntriesCss1.css'
        resource url: 'css/manyEntriesCss2.css'
        resource url: 'css/manyEntriesCss3.css'
    }

    oneEntryJs {
        resource url: 'js/oneEntryJs.js'
    }

    manyEntriesJs {
        resource url: 'js/manyEntriesJs1.js'
        resource url: 'js/manyEntriesJs2.js'
        resource url: 'js/manyEntriesJs3.js'
    }

    bothCssAndJs {
        resource url: 'css/bothCssAndJs.css'
        resource url: 'js/bothCssAndJs.js'
    }

    dependsOnChild {
        resource url: 'css/dependsOnChild.css'
    }

    dependsOnParent {
        dependsOn 'dependsOnChild'
        resource url: 'css/dependsOnParent.css'
    }

    manyDependentChild1 {
        resource url: 'css/manyDependentChild1.css'
    }

    manyDependentChild2 {
        resource url: 'css/manyDependentChild2.css'
    }

    manyDependentParent {
        dependsOn 'manyDependentChild1,manyDependentChild2'
        resource url: 'css/manyDependentParent.css'
    }

    bundledJsAndCss {
        defaultBundle 'simplebundle'
        resource url: 'css/bundledCss.css'
        resource url: 'js/bundledJs.js'
    }

    dirAndFileNotation {
        resource url: [dir:'css/nested', file: 'dirAndFileNotation.css']
        resource url: [dir:'js/nested', file: 'dirAndFileNotation.js']
    }

    // GPRESOURCES-116
    googlemap {
        resource url: 'http://maps.google.com/maps/api/js?v=3.5&sensor=false', attrs:[type:'js'], disposition: 'head'
    }
}