<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>

<body>
<h2><i class="fa fa-home"></i> Welcome!</h2>
<hr/>
<div class="well">
    <h4>This is a demo built by Angel Ruiz as part of the NLA recruitment process.</h4>
</div>
<h3>Features</h3>
<hr/>
<ul>
    <li>One of the more important things I want to highlight is the fact that <strong>NO Javascript has been written</strong> to enable the functionality within this webapp.
    All the dynamic behaviour has been specified declaratively within the HTML5 markup. You won't see any local js file hosted in this webapp, apart from those that belong to the libraries used.
    </li>
    <li>
        To enable the Ajax dynamic page refresh declaratively (which means without explicit javascript coding) the library <a href="http://ajaxanywhere.com" target="_blank">AjaxAnywhere</a>, which was developed by myself, has been used. :-)<br/>
        This reduces all the javascript boilerplate code required to perform partial page refresh via Ajax, making the code more readable and less prone to errors. This library can be used in any action based JVM web framework, including Grails.
    </li>
    <li>The <a href="https://developers.google.com/books/" target="_blank">Google Books API</a> has been used to extract all the books metadata.</li>
    <li>The "members" section makes use of the <a href="https://en.gravatar.com/" target="_blank">Gravatar service</a> via the <a href="https://grails.org/plugins/tag/gravatar" target="_blank">Gravatar Grails plugin</a></li>
    <li>I have written a couple of Automatic Integration Tests using the Spock testing framework.</li>
    <li>The UI is fully responsive</li>
</ul>
<h3>Assumptions</h3>
<hr/>
<ul>
    <li>The DB is initialized with a fix set of books and users inside the BootStrap.groovy file</li>
    <li>The books represent some of the books of my personal library.</li>
    <li>The system assumes there is only one copy of the book.</li>
    <li>At startup time the number of books lent by each user is randomly selected. So it will be different every time the application starts, as I am using an in-memory DB.</li>
</ul>
<h3>Featured technologies</h3>
<hr/>
<dl class="dl-horizontal">
    <dt>Web Framework:</dt>
    <dd>Grails 2.5.0</dd>
    <dt>Persistence Framework:</dt>
    <dd>GORM</dd>
    <dt>Client side:</dt>
    <dd>jQuery 1.11.1, Bootstrap 3.3.4, Font Awesome 3.4.0</dd>
    <dt>REST client:</dt>
    <dd>Groovy HTTPBuilder</dd>
    <dt>Testing framework:</dt>
    <dd>Spock</dd>
    <dt>Ajax framework:</dt>
    <dd><a href="http://ajaxanywhere.com" target="_blank">AjaxAnywhere</a></dd>
</dl>
</body>
</html>

