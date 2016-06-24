<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newbubble.aspx.cs" ValidateRequest="false" Inherits="newbubble" %>

<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>New Bubble</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>--%>
    <%--<script src="bower_components/jquery/dist/jquery.min.js"></script>--%>
    <script src="bower_components/jquery/dist/jquery.js"></script>

    <link href="/v1/bower_components/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="/v1/bower_components/bootstrap/dist/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css' />
    <link href="/v1/bower_components/dropzone-master/dist/dropzone.css" type="text/css" rel="stylesheet" />
    <link href="/v1/assets/css/new-bubble.css" type="text/css" rel="stylesheet" />

    <!--Start- Include froala JS files. -->
    <script src="/v1/bower_components/froala/froala_editor.min.js"></script>
    <script src="/v1/bower_components/froala/froala_editor.min.js"></script>
    <script src="/v1/bower_components/froala/block_styles.min.js"></script>
    <script src="/v1/bower_components/froala/char_counter.min.js"></script>
    <script src="/v1/bower_components/froala/colors.min.js"></script>
    <script src="/v1/bower_components/froala/entities.min.js"></script>
    <script src="/v1/bower_components/froala/file_upload.min.js"></script>
    <script src="/v1/bower_components/froala/font_family.min.js"></script>
    <script src="/v1/bower_components/froala/font_size.min.js"></script>
    <script src="/v1/bower_components/froala/fullscreen.min.js"></script>
    <script src="/v1/bower_components/froala/inline_styles.min.js"></script>
    <script src="/v1/bower_components/froala/lists.min.js"></script>
    <script src="/v1/bower_components/froala/media_manager.min.js"></script>
    <script src="/v1/bower_components/froala/tables.min.js"></script>
    <script src="/v1/bower_components/froala/urls.min.js"></script>
    <script src="/v1/bower_components/froala/video.min.js"></script>
    <!--End- Include froala JS files. -->

    <!--Start- Include froala CSS files. -->
    <link href="/v1/bower_components/froala/css/froala_content.css" rel="stylesheet" />
    <link href="/v1/bower_components/froala/css/froala_editor.min.css" rel="stylesheet" type="text/css" />
    <link href="/v1/bower_components/froala/css/froala_style.min.css" rel="stylesheet" type="text/css" />
    <link href="/v1/bower_components/froala/css/froala_content.css" rel="stylesheet" type="text/css" />
    <!--End- Include froala CSS files. -->


    <link href="/v1/bower_components/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" />
    <link href="/v1/bower_components/bootstrap-tagsinput/app.css" rel="stylesheet" />
    <script src="/v1/bower_components/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>

    <script src="bower_components/bootstrap-tagsinput/bootstrap-typeahead.js"></script>
    <script src="/v1/bower_components/bootstrap-tagsinput/typeahead.bundle.js"></script>
    <style type="text/css">
        .open {
            height: 401px !important;
            top: 5% !important;
        }
    </style>
</head>
<body>

    <div class="bubble-modals" style="display: block;">
        <span class="close-modal"><i class="fa fa-times" aria-hidden="true"></i></span>
        <div class="overlay"></div>
        <div class="new-bubble-types">
            <ul class="list-unstyled inline-list page-icons">
                <li>
                    <figure class="textBtn" data-post-type="text">
                        <i class="fa fa-text-width" aria-hidden="true"></i>
                        <figcaption>TEXT</figcaption>
                    </figure>
                </li>
                <li>
                    <figure data-post-type="photo">
                        <i class="fa fa-picture-o" aria-hidden="true"></i>
                        <figcaption>PHOTO</figcaption>
                    </figure>
                </li>
                <li>
                    <figure data-post-type="video">
                        <i class="fa fa-video-camera" aria-hidden="true"></i>
                        <figcaption>VIDEO</figcaption>
                    </figure>
                </li>
                <li>
                    <figure data-post-type="link">
                        <i class="fa fa-link" aria-hidden="true"></i>
                        <figcaption>LINK</figcaption>
                    </figure>
                </li>
                <li>
                    <figure data-post-type="product">
                        <i class="fa fa-product-hunt" aria-hidden="true"></i>
                        <figcaption>PRODUCT</figcaption>
                    </figure>
                </li>
                <li>
                    <figure data-post-type="event">
                        <i class="fa fa-calendar" aria-hidden="true"></i>
                        <figcaption>EVENT</figcaption>
                    </figure>
                </li>
                <li>
                    <figure data-post-type="audio">
                        <i class="fa fa-headphones" aria-hidden="true"></i>
                        <figcaption>AUDIO</figcaption>
                    </figure>
                </li>
            </ul>
        </div>

        <div class="modal-container text">
            <div class="text-modal" id="dvtextmodal">
                <div id="dvtext">
                    <textarea id="txtEditor" class="form-control textcontent"></textarea>
                    <input type="hidden" id="hdndescription" value="" />
                    <input type="text" class="no-borders title form-control" placeholder="Title" name="title" id="txttitle" />
                    <br />
                    <label class="labeltitle" id="lblcategory">Category</label>: 
                    <select id="ddlcategory" class="form-control"></select>
                    <br />
                    <%--<input type="text" id="txttags" class="form-control" data-role="tagsinput" placeholder="Tags" />--%>
                    <input type="text" value="" id="txttags" class="form-control" placeholder="Tags" />
                    <script>
                        
                    </script>
                    <br />
                    <input type="checkbox" id="ckbprivate" />
                    <label class="labeltitle" id="lblprivate">Private</label>
                </div>
            </div>
            <a id="btnSaveTextPost" class="nextBtn" href="#">Next <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
        </div>

        <div class="modal-container photo">
            <div class="photo-modal" id="dvphotomodal">
                <div id="fileupload">
                    <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
                    <div class="row fileupload-buttonbar">
                        <div class="col-lg-7">
                            <!-- The fileinput-button span is used to style the file input field as button -->
                            <span class="btn btn-success fileinput-button">
                                <i class="glyphicon glyphicon-plus"></i>
                                <span>Add files...</span>
                                <input type="file" name="files[]" multiple="multiple" id="fileinputmedia" accept="image/*" />
                            </span>
                            <button type="submit" class="btn btn-primary start">
                                <i class="glyphicon glyphicon-upload"></i>
                                <span>Start upload</span>
                            </button>
                            <button type="reset" class="btn btn-warning cancel">
                                <i class="glyphicon glyphicon-ban-circle"></i>
                                <span>Cancel upload</span>
                            </button>
                            <button type="button" class="btn btn-danger delete">
                                <i class="glyphicon glyphicon-trash"></i>
                                <span>Delete</span>
                            </button>
                            <input type="checkbox" class="toggle" />
                            <!-- The global file processing state -->
                            <span class="fileupload-process"></span>
                        </div>
                        <!-- The global progress state -->
                        <div class="col-lg-5 fileupload-progress fade">
                            <!-- The global progress bar -->
                            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                                <div class="progress-bar progress-bar-success" style="width: 0%;"></div>
                            </div>
                            <!-- The extended global progress state -->
                            <div class="progress-extended">&nbsp;</div>
                        </div>
                    </div>
                    <!-- The table listing the files available for upload/download -->
                    <table role="presentation" class="table table-striped">
                        <tbody class="files"></tbody>
                    </table>
                </div>
            </div>
            <a id="btnSavePhotoPost" class="nextBtn" href="#">Next <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
        </div>

        <div class="modal-container video">
            <div class="video-modal" id="dvvideomodal">
            </div>
            <a id="btnSaveVideoPost" class="nextBtn" href="#">Next <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
        </div>

        <div class="modal-container audio">
            <div class="audio-modal" id="dvaudiomodal">
            </div>
            <a id="btnSaveAudioPost" class="nextBtn" href="#">Next <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
        </div>

        <div class="modal-container event admin-form">
            <div class="event-modal" id="dveventmodal">
                <input type="text" class="form-control " id="txtstart" placeholder="Start Date" style="width: 300px;" />
                <br />
                <input type="text" class="form-control " id="txtto" placeholder="To Date" style="width: 300px;" />
                <br />
                <label>MAP</label>
                <input id="txtSearchMarker" type="text" runat="server" clientidmode="Static" class="form-control" />
                <br />

                <input type="hidden" id="hdneventid" value="" runat="server" clientidmode="static" />
                <input type="hidden" id="hdncoordx" value="" runat="server" data-geo="lat" clientidmode="static" />
                <input type="hidden" id="hdncoordy" value="" runat="server" data-geo="lng" clientidmode="static" />
                <input type="hidden" id="hdntitle" value="" runat="server" data-geo="formatted_address" clientidmode="static" />
            </div>
            <a id="btnSaveEventMapPost" class="nextBtn" href="#">Next <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
        </div>


    </div>

    <!-- The template to display files available for upload -->
    <script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            <p class="name">{%=file.name%}</p>
            <strong class="error text-danger"></strong>
        </td>
        <td>
            <p class="size">Processing...</p>
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
        </td>
        <td>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary start" disabled>
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>Start</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
    </script>
    <!-- The template to display files available for download -->
    <script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    {% if (file.type.indexOf("video")>= 0) { %}
                        <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><video src="{%=file.thumbnailUrl%}" controls/></a>
                    {% } else if (file.type.indexOf("audio")>= 0) {  %}
                        <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><audio src="{%=file.thumbnailUrl%}" controls/></a>
                    {% } else if (file.type.indexOf("image")>= 0) {  %}
                        <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                    {% }  %}
                {% }  %}
            </span>
        </td>
        <td>
            <p class="name">
                {% if (file.url) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                {% } else { %}
                    <span>{%=file.name%}</span>
                {% } %}
            </p>
            {% if (file.error) { %}
                <div><span class="label label-danger">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            {% if (file.deleteUrl) { %}
               <button class="btn btn-danger delete" id="{%=file.name%}" media-type="{%=file.type%}" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                    <i class="glyphicon glyphicon-trash"></i>
                    <span>Delete</span>
                </button>
                <input type="checkbox" name="delete" value="1" class="toggle">
            {% } else { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
    </script>

    <script type="text/javascript" src="/v1/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/v1/bower_components/tinymce/tinymce.min.js"></script>
    <script type="text/javascript" src="/v1/bower_components/dropzone-master/dist/dropzone.js"></script>
    <script type="text/javascript" src="/v1/assets/js/new-bubble.js"></script>
    <script type="text/javascript" src="/v1/js/newbubble.js"></script>

    <link href="/v1/bower_components/blueimpfileupload/css/jquery.fileupload.css" rel="stylesheet" />
    <link href="/v1/bower_components/blueimpfileupload/css/jquery.fileupload-ui.css" rel="stylesheet" />
    <!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
    <script src="/v1/bower_components/blueimpfileupload/vendor/jquery.ui.widget.js"></script>
    <!-- The Templates plugin is included to render the upload/download listings -->
    <script src="/v1/bower_components/blueimpfileupload/vendor/tmpl.min.js"></script>
    <!-- The Load Image plugin is included for the preview images and image resizing functionality -->
    <script src="http://blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js"></script>
    <!-- The Canvas to Blob plugin is included for image resizing functionality -->
    <script src="http://blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>
    <!-- blueimp Gallery script -->
    <script src="http://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
    <!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
    <script src="bower_components/blueimpfileupload/jquery.iframe-transport.js"></script>
    <!-- The basic File Upload plugin -->
    <script src="/v1/bower_components/blueimpfileupload/jquery.fileupload.js"></script>
    <!-- The File Upload processing plugin -->
    <script src="/v1/bower_components/blueimpfileupload/jquery.fileupload-process.js"></script>
    <!-- The File Upload image preview & resize plugin -->
    <script src="/v1/bower_components/blueimpfileupload/jquery.fileupload-image.js"></script>
    <!-- The File Upload audio preview plugin -->
    <script src="/v1/bower_components/blueimpfileupload/jquery.fileupload-audio.js"></script>
    <!-- The File Upload video preview plugin -->
    <script src="/v1/bower_components/blueimpfileupload/jquery.fileupload-video.js"></script>
    <!-- The File Upload validation plugin -->
    <script src="/v1/bower_components/blueimpfileupload/jquery.fileupload-validate.js"></script>
    <!-- The File Upload user interface plugin -->
    <script src="/v1/bower_components/blueimpfileupload/jquery.fileupload-ui.js"></script>
    <!-- The main application script -->
    <script src="/v1/bower_components/blueimpfileupload/main.js"></script>

    <!-- The datetimepicker plugin -->
    <link href="/v1/bower_components/datepicker/css/bootstrap-datetimepicker.css" rel="stylesheet" />
    <script src="/v1/bower_components/datepicker/js/moment.js"></script>
    <script src="/v1/bower_components/datepicker/js/bootstrap-datetimepicker.js"></script>



    <!-- The googlemap plugin (without key) -->
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&amp;libraries=places"></script>
    <script src="http://ubilabs.github.io/geocomplete/jquery.geocomplete.js"></script>
</body>
</html>
