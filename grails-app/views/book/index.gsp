<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Books</title>
    <r:require module="ajaxanywhere"/>
</head>

<body>
<h2><i class="fa fa-book"></i> Books</h2>
<hr/>

<div class="row">
    <g:each in="${books}" var="book">
        <div class="col-xs-6 col-sm-4 col-md-2">
            <div class="thumbnail book-thumbnail" data-toggle="modal" data-target="#bookModal"
                 aa-refresh-zones="bookDetailDialogZone" aa-href="${g.createLink(action: 'bookDetail', id: book.id)}">
                <img src="${book.coverUrl}" alt="${book.title} cover" class="thumbnail img-responsive">
                <div class="caption">
                    <p class="text-center">${book.title}</p>
                </div>
            </div>
        </div>
    </g:each>
</div>

<!-- Modal -->
<div class="modal fade" id="bookModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<aa:zone id="bookDetailDialogZone">
    <g:include action="bookDetail"/>
</aa:zone>
</div>

</body>
</html>