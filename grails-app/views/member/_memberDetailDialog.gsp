
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Member details</h4>
        </div>
        <div class="modal-body">
            <g:if test="${member}">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <a href="https://en.gravatar.com/" class="thumbnail profile-gravatar" target="_blank" title="Your Gravatar image, click to edit">
                            <avatar:gravatar email="${member.email}" alt="${member.name} Gravatar" size="200" gravatarRating="G" defaultGravatarUrl="identicon"/>
                        </a>
                    </div>
                    <div class="col-sm-6 col-md-8">
                        <h4>${member.name}</h4>
                        <hr/>
                        <dl class="">
                            <dt>Email:</dt>
                            <dd>${member.name}</dd>
                            <dt>Phone:</dt>
                            <dd>${member.phone}</dd>
                        </dl>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h5>Books lent</h5>
                        <hr/>
                        <g:each in="${member.booksLent}" var="book">
                            <div class="col-sm-4">
                                <div class="thumbnail book-thumbnail">
                                    <img src="${book.coverUrl}" alt="${book.title} cover" class="thumbnail img-responsive">
                                    <div class="caption">
                                        <p class="text-center">${book.title}</p>
                                    </div>
                                </div>
                            </div>
                        </g:each>

                    </div>
                </div>
            </g:if>
            <g:else>
                <div class="progress-spinner"></div>
            </g:else>
        </div>
    </div>
</div>