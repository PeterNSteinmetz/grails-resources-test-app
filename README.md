grails-resources-test-app
=========================

Grails resources plugin test application. This application is for testing purposes.

How does it work?
-----------------

It's simple. By default all p elements in HTML have background set to red. Every included CSS defines one class with distinct name with green background. If CSS is included then class is applied and you see this paragraph green. JavaScripts works the same way, but it modifies background with jQuery's css() method.

Jasmine
-------

Visual test is just an overview. Application uses Jasmine - javascript testing framework. It runs specs as soon as you enter specification page. There is also a possibility to run Jasmine specs with no browser for continuous integration testing purposes.

How to run?
-----------

Just run grails run-app.
