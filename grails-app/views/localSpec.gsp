<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Local resources specification</title>
        <style type="text/css" media="screen">
            p {
                background-color: #cf867e;
                padding: 1px 3px;
                font-family: monospace;
            }
        </style>
        %{-- Include specification code in traditional way--}%
        <script type="text/javascript" src="js/local-spec.js"></script>

        <r:require module="oneEntryCss" />
        <r:require module="manyEntriesCss" />
        <r:require module="oneEntryJs" />
        <r:require module="manyEntriesJs" />
        <r:require module="bothCssAndJs" />
        <r:require module="dependsOnParent" />
        <r:require module="manyDependentParent" />
        <r:require module="dirAndFileNotation" />

        %{-- Below are bundled modules. Include them in traditional way to verify correct bundle name. --}%
        %{-- Deferred JavaScripts from bundles are included at the bottom --}%
        %{--<r:require module="bundledJsAndCss" />--}%
        <link rel="stylesheet" href="static/bundle-simplebundle_head.css">

    </head>
    <body>
        <h1>Local specification</h1>
        <h2 style="margin-bottom: 40px">Visually all paragraphs should become green</h2>

        <rtest:p name="oneEntryCss" />
        <rtest:p name="manyEntriesCss1" />
        <rtest:p name="manyEntriesCss2" />
        <rtest:p name="manyEntriesCss3" />
        <rtest:p name="oneEntryJs" />
        <rtest:p name="manyEntriesJs1" />
        <rtest:p name="manyEntriesJs2" />
        <rtest:p name="manyEntriesJs3" />
        <rtest:p name="bothCssAndJs1" />
        <rtest:p name="bothCssAndJs2" />
        <rtest:p name="dependsOnChild" />
        <rtest:p name="dependsOnParent" />
        <rtest:p name="manyDependentChild1" />
        <rtest:p name="manyDependentChild2" />
        <rtest:p name="manyDependentParent" />
        <rtest:p name="bundledCss" />
        <rtest:p name="bundledJs" />
        <rtest:p name="dirAndFileNotationCss" />
        <rtest:p name="dirAndFileNotationJs" />

        <h2>Jasmine results</h2>

        %{-- Below are bundled modules. Include them in traditional way to verify correct bundle name. --}%
        %{--<r:require module="bundledJsAndCss" />--}%
        <script type="text/javascript" src="static/bundle-simplebundle_defer.js"></script>
    </body>