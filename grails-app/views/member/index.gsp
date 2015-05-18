<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Books</title>
    <r:require module="ajaxanywhere"/>
</head>

<body>
<h2><i class="fa fa-user"></i> Members</h2>
<hr/>

<div class="row">
    <g:each in="${members}" var="member">
        <div class="col-xs-6 col-sm-4 col-md-2">
            <div class="thumbnail member-thumbnail text-center" data-toggle="modal" data-target="#memberModal"
                 aa-refresh-zones="memberDetailDialogZone" aa-href="${g.createLink(action: 'memberDetail', id: member.id)}">
                <avatar:gravatar email="${member.email}" alt="${member.name} Gravatar" size="200" gravatarRating="G" defaultGravatarUrl="identicon"/>

                <div class="caption">
                    <p class="text-center">${member.name}</p>

                </div>
            </div>
        </div>
    </g:each>
</div>

<!-- Modal -->
<div class="modal fade" id="memberModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<aa:zone id="memberDetailDialogZone">
    <g:include action="memberDetail"/>
</aa:zone>
</div>

</body>
</html>