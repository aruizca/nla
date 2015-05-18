
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Book details</h4>
        </div>
        <div class="modal-body">
            <g:if test="${book}">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <img src="${book.coverUrl}" alt="${book.title} cover" class="thumbnail img-responsive">
                    </div>
                    <div class="col-sm-6 col-md-8">
                        <h4>${book.title}</h4>
                        <hr/>
                        <dl class="dl-horizontal book-details">
                            <dt>Author/s:</dt>
                            <dd>${book.author}</dd>
                            <dt>Publisher:</dt>
                            <dd>${book.publisher?:'N/A'}</dd>
                            <dt>Publication Year:</dt>
                            <dd>${book.publicationYear?:'N/A'}</dd>
                            <dt>ISBN 10:</dt>
                            <dd>${book.isbn_10}</dd>
                        </dl>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h5>Description</h5>
                        <hr/>
                        <p>${book.description?:'N/A'}</p>
                    </div>
                </div>
            </g:if>
            <g:else>
                <div class="progress-spinner"></div>
            </g:else>
        </div>
    </div>
</div>