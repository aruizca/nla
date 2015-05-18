<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="app.version" content="${g.meta(name: 'app.version')}"/>
    <meta name="app.build" content="${g.meta(name: 'app.build')}"/>
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <r:require modules="nla"/>
    <r:layoutResources/>
    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>

        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="${request.forwardURI.endsWith('nla/') ? 'active' : ''}"><a href="${createLink(uri: '/')}"><i class="fa fa-home"></i> Home</a></li>
                <li class="${request.forwardURI.indexOf('nla/book') != -1 ? 'active' : ''}"><a href="${createLink(controller: 'book')}"><i class="fa fa-book"></i> Books</a></li>
                <li class="${request.forwardURI.indexOf('nla/member') != -1 ? 'active' : ''}"><a href="${createLink(controller: 'member')}"><i class="fa fa-user"></i> Members</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="container">
    <g:layoutBody/>
</div>

<r:layoutResources disposition="defer"/>
</body>
</html>


