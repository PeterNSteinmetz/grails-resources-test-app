<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Grails resources plugin test application</title>

	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="status">
			<h1>Application Status</h1>
			<ul>
				<li>App version: <g:meta name="app.version"/></li>
				<li>Grails version: <g:meta name="app.grails.version"/></li>
				<li>Groovy version: ${org.codehaus.groovy.runtime.InvokerHelper.getVersion()}</li>
				<li>JVM version: ${System.getProperty('java.version')}</li>
				<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
				<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
				<li>Domains: ${grailsApplication.domainClasses.size()}</li>
				<li>Services: ${grailsApplication.serviceClasses.size()}</li>
				<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
			</ul>
			<h1>Installed Plugins</h1>
			<ul>
				<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
					<li>${plugin.name} - ${plugin.version}</li>
				</g:each>
			</ul>
		</div>
		<div class="main">
			<h1>Grails resources test application</h1>
			<p>This application is for testing purposes. It functionally tests resources plugin.</p>

            <h1>How does it work?</h1>
            <p>It's simple. By default all <code>p</code> elements in HTML have background set to red. Every included
            CSS defines one class with distinct name with green background. If CSS is included then class is applied and
            you see this paragraph green. JavaScripts works the same way, but it modifies background with jQuery's
            <code>css()</code> method.</p>

            <h1>Jasmine</h1>
            <p>Visual test is just an overview. Application uses Jasmine - javascript testing framework. It runs specs
            as soon as you enter specification page. There is also a possibility to run Jasmine specs with no browser
            for continuous integration testing purposes.</p>

            <h2>Specifications:</h2>
            <ul class="spec-list">
                <li><g:link uri="/localSpec">Local resources specification</g:link></li>
                <li><g:link uri="/remoteSpec">Remote resources specification</g:link></li>
            </ul>
		</div>
	</body>
</html>
