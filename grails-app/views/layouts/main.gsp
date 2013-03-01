<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">

        <!-- Jasmine -->
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'jasmine.css')}" type="text/css">
        <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.9.1.min.js')}" ></script>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'jasmine.js')}" ></script>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'jasmine-html.js')}" ></script>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'jasmine-jquery.js')}" ></script>
        <script type="text/javascript" src="${resource(dir: 'js', file: 'jasmine-resources-helpers.js')}" ></script>

		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div id="grailsLogo" role="banner">
            <a href="http://grails.org"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a>
            <div id="resourcesPluginVersion">
                Resources plugin: ${applicationContext.getBean('pluginManager').getGrailsPlugin('resources')?.version}
            </div>
        </div>
        <div class="main">
            <h2 id="toggle-resources">Resources dump (click to toggle)</h2>
            <div id="resources-dump" style="display: none">
                <pre>${grailsApplication.mainContext.getBean('grailsResourceProcessor').dumpResources()}</pre>
            </div>

            <script type="text/javascript">
                $(document).ready(function () {
                    var toggleResources = function() { $("#resources-dump").toggle(); }
                    $("#toggle-resources").click(toggleResources);
                });
            </script>

            <g:layoutBody/>

            <script type="text/javascript">
                (function () {
                    var jasmineEnv = jasmine.getEnv();
                    jasmineEnv.updateInterval = 1000;

                    var htmlReporter = new jasmine.HtmlReporter();

                    jasmineEnv.addReporter(htmlReporter);

                    jasmineEnv.specFilter = function (spec) {
                        return htmlReporter.specFilter(spec);
                    };

                    $(document).ready(function () {
                        execJasmine();
                    });

                    function execJasmine() {
                        jasmineEnv.execute();
                    }
                })();
            </script>

            <div style="clear: both"></div>
        </div>

		<r:layoutResources />
	</body>
</html>
