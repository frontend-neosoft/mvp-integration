<%@ Page Language="C#" AutoEventWireup="true" CodeFile="otherprofile.aspx.cs" Inherits="otherprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Other Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="bower_components/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/jQuery.mmenu-master/dist/css/jquery.mmenu.all.css" type="text/css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css' />
    <link href="bower_components/icheck-1.x/skins/line/_all.css" type="text/css" rel="stylesheet" />
    <link href="assets/css/style.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/jQuery.mmenu-master/dist/extensions/positioning/jquery.mmenu.positioning.css" type="text/css" rel="stylesheet" />
    <style>
        .like-pressed {
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="hdnPostIndex" Value="1" runat="server" />

        <div id="profileWrap" class="infinite-scroll">
            <div id="contentWrap">

                <header class="visible-xs clearfix">
                    <div class="hamburger-mobile">
                        <img class="mob-menu" src="assets/images/menuIcon.png" height="24">
                        <img class="mob-menu-close hidden" src="assets/images/close.png" height="24">
                        <div class="mob-menuOpen hidden">
                            <ul class="list-unstyled inline-list menu-List">
                                <li><a href="myProfile.html">MY PROFILE</a></li>
                                <!-- <li><a href="#">MY WEBSITE &amp; APP</a></li> -->
                                <li><a href="#">-</a></li>
                                <li><a href="timeline.html">ALL BUBBLES</a></li>
                                <li><a href="discover.html">DISCOVER</a></li>
                                <li><a href="#">-</a></li>
                                <!-- <li><a href="#">ACCOUNT SETTINGS</a></li> -->
                            </ul>

                        </div>
                        <div class="icon-addon addon-lg">
                            <input type="text" placeholder="Search" class="form-control search-box" id="search">
                            <label for="search" class="glyphicon glyphicon-search" rel="tooltip" title="search"></label>
                        </div>
                        <a href="#" class="plus-tag" data-target="#newPostModal" data-toggle="modal">
                            <i class="fa fa-plus-circle fa-2x plus-icon"></i>
                        </a>
                    </div>
                </header>
                <%--<header class="profileHeader parallax-window hidden-xs" id="user-cover-pic" data-image-src="">--%>
                <header class="profileHeader parallax-window" id="user-cover-pic" data-parallax="scroll" data-image-src="">
                    <div class="container">
                        <div class="row ">
                            <div id="menuSearchWrap" class="col-xs-12 col-sm-4">
                                <aside id="menuSearchBtns" class="pull-left">
                                    <figure id="hamburger">
                                        <a role="button" data-toggle="collapse" data-parent="#menuSearchWrap" href="#collapseMenu" aria-expanded="true" aria-controls="collapseMenu">
                                            <div class="menu-bar menu-bar-top"></div>
                                            <div class="menu-bar menu-bar-middle"></div>
                                            <div class="menu-bar menu-bar-bottom"></div>
                                        </a>
                                    </figure>
                                    <figure id="searchBtn" class=" text-center">
                                        <a role="button" data-toggle="collapse" data-parent="#menuSearchWrap" href="#searchWrap" aria-expanded="false" aria-controls="searchBox">
                                            <i class="fa fa-search"></i>
                                        </a>
                                    </figure>
                                </aside>
                                <div class="pull-right menu-wrap">
                                    <nav id="collapseMenu" class="panel-collapse collapse in">
                                        <ul class="list-unstyled">
                                            <li><a href="timeline.html">All Posts</a></li>
                                            <li><a href="discover.html">Discover</a></li>
                                            <li><a href="myProfile.html">My Profile</a></li>
                                            <!-- <li><a href="#">My Website &amp; App</a></li> -->
                                            <!-- <li><a href="#">Account Settings</a></li> -->
                                        </ul>
                                    </nav>
                                    <div id="searchWrap" class=" panel-collapse collapse" role="tabpanel">
                                        <div id="searchBox" class="list-unstyled">
                                            <input type="search">
                                            <ul class="list-unstyled">
                                                <li>Search Result</li>
                                                <li>Search Result</li>
                                                <li>Search Result</li>
                                                <li>Search Result</li>
                                                <li>Search Result</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <section id="user-profile" class="col-xs-12  col-sm-offset-2 col-sm-6 col-lg-offset-3 col-lg-5">
                                <div class="user-profile-info">
                                    <div class="user-followers">
                                        <ul>
                                            <li>
                                                <a href="#">
                                                    <span id="user-follower-count"></span>
                                                    <span>FOLLOWERS</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span id="user-following-count"></span>
                                                    <span>FOLLOWING</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="user-image">
                                        <a href="#">
                                            <img id="user-profile-pic" src="" class="img-circle" alt="User Profile">
                                        </a>
                                        <h4>
                                            <i class="fa fa-trophy" aria-hidden="true"></i>
                                            <span id="user-name"></span>
                                        </h4>
                                        <div class="edit-profile-btn">
                                            <button class="btn btn-md btn-default" id="follow-btn" type="button"><i class="fa fa-plus" aria-hidden="true"></i>Follow</button>
                                        </div>
                                    </div>
                                </div>
                                <div id="addPostWarp" class="pull-left text-center">
                                    <figure>
                                        <a href="#" data-toggle="modal" data-target="#newPostModal">
                                            <i class="fa fa-plus-circle fa-2x"></i>
                                            <div class="newpost-text uppercase">New<br />
                                                <small>Post</small></div>
                                        </a>
                                    </figure>
                                </div>
                            </section>
                        </div>
                        <div class="scroll-down-btn clearfix text-center">
                            <a href="#"><i class="fa fa-chevron-up"></i></a>
                        </div>
                        <div class="margin-lr-15">
                            <div class="tabs">
                                <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
                                    <li class="active"><a href="#Posts" data-toggle="tab">Posts</a></li>
                                    <!-- <li><a href="#App" data-toggle="tab">App &amp; Site</a></li> -->
                                </ul>
                            </div>
                        </div>
                    </div>

                </header>
                <div id="content">
                    <%--<div class=" visible-xs">
                        <section id="user-profile" class="col-xs-12  col-sm-offset-2 col-sm-6 col-lg-offset-3 col-lg-5">
                            <div class="container user-profile-info">
                                <h4><i class="fa fa-trophy" aria-hidden="true"></i>USER NAME</h4>
                                <div class="user-followers">
                                    <ul>
                                        <li><a href="#"><span>FOLLOWING</span>205</a></li>
                                        <li><a href="#"><span>FOLLOWERS</span>45</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="user-image container">
                                <a href="#">
                                    <img src="http://lorempixel.com/500/300" class="img-circle" alt="User Profile"></a>
                                <div class="edit-profile-btn">
                                    <button class="btn btn-md btn-default" id="follow-btn" type="button"><i class="fa fa-plus" aria-hidden="true"></i>Follow</button>
                                </div>
                            </div>

                            <div class="margin-lr-15">
                                <div class="tabs">
                                    <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
                                        <li class="active other_post"><a href="#Posts" data-toggle="tab">Posts</a></li>
                                        <!-- <li><a href="#App" data-toggle="tab">App &amp; Site</a></li> -->
                                    </ul>
                                </div>
                            </div>
                        </section>
                    </div>--%>
                    <div class="pull-up">
                        <div class="container">
                            <div class="margin-lr-15">
                                <section id="menu-tab" class="col-xs-12">
                                    <div id="my-tabs">

                                        <div id="my-tab-content" class="tab-content">
                                            <div class="tab-pane active" id="Posts">
                                                <div class="container">
                                                    <div class="margin-lr-15">
                                                        <div class="feed">
                                                            <div class="row">
                                                                <div class="grid masonry"></div>

                                                                <script id="post_template" type="text/x-handlebars-template">
                                                                    <%--<div class="col-xs-12 {{#ifNotEquals post_type 'video_post'}} col-sm-6 {{/ifNotEquals}} grid-item">--%>
                                                                    <%--<div class="card {{#ifEquals post_type 'video_post'}} card-full-width {{/ifEquals}} col-sm-12" 
                                                                            data-indexo="{{indexo}}" data-indexop="{{indexop}}" >--%>
                                                                    <div class="col-xs-12 col-sm-6 grid-item">
                                                                        <div class="card col-sm-12" data-indexo="{{indexo}}" data-indexop="{{indexop}}" >
                                                                            <header>
                                                                                <img src="{{user_profilepic}}" height="64" width="64" />
                                                                                <h3 class="vcenter">{{ username }}</h3>
                                                                                <p class="vcenter">{{ timestamp }}</p>
                                                                                <div class="clearfix"></div>
                                                                            </header>
                                                                            <article>
                                                                                <p>Lorem ipsum</p>
                                                                                <h2 class="uppercase"><b>{{post_title}}</b></h2>
                                                                                {{#if video_url}}
                                                                                    {{#if IsYoutubeVid}}
																				        <iframe width="100%" height="315" src="{{video_url}}" frameborder="0" allowfullscreen></iframe>
                                                                                    {{else}}
                                                                                            <div style="text-align: center;">
                                                                                                <video style="margin: 0 auto; width: 400px;" controls>
                                                                                                    <source src="{{video_url}}" type="video/{{video_format}}" />
                                                                                                    Your browser does not support HTML5 video.
                                                                                                </video>
                                                                                            </div>
                                                                                    {{/if}}
                                                                                {{/if}}

                                                                                
                                                                                {{#if audio_url}}
                                                                                    {{#if IsSoundcloudAudio}}
																				        <iframe scrolling="no" frameborder="no"
                                                                                            src="{{audio_url}}" style="width: 322px; height: 100px;"></iframe>
                                                                                    {{else}}
                                                                                        <audio controls>
                                                                                            <source src="{{audio_url}}" type="audio/{{audio_format}}" />
                                                                                            Your browser does not support the audio element.
                                                                                        </audio>
                                                                                    {{/if}}
                                                                                {{/if}}

                                                                                {{#if event_image}}
                                                                                    <div style="width: 200px; height: 300px;">
                                                                                        <img src="{{ event_image }}" width="100%" />
                                                                                        <span>Event Date Year: {{event_date_year}}</span><br />
                                                                                        <span>Event Date Month: {{event_date_month}}</span><br />
                                                                                        <span>Event Date Day: {{event_date_day}}</span><br />
                                                                                        <span>Event Date time: {{event_date_time}}</span><br />
                                                                                        <span>Event Duration: {{event_duration_hours}}:{{event_duration_mins}}</span><br />
                                                                                    </div>
                                                                                {{/if}}
                                                                                
																				{{#if image_url}}
																				    <img src="{{ image_url }}" width="100%" />
                                                                                {{/if}}

																				{{#if post_text}}
																				<p class="readmore dot-ellipsis dot-height-50">
                                                                                    {{ post_text }}
                                                                                </p>
                                                                                {{/if}}
																				<div class="clearfix"></div>
                                                                            </article>
                                                                            <section class="actionBtns">
                                                                                <a class="fav pull-left">
                                                                                    <i class="fa fa-2x fa-heart like-btn {{#if has_already_liked}}like-pressed{{/if}}" data-total-likes="{{ total_likes }}" 
                                                                                        data-is-liked="{{has_already_liked}}"></i>
                                                                                    <span class="likes-count">{{ total_likes }}</span>
                                                                                </a>

                                                                                <!-- Addthis toolbox code -->
                                                                                <div class="addthis_toolbox pull-right" style="margin-top: 1%;"
                                                                                    addthis:url="http://www.ebubble.com/v1/viewbubble.aspx?oid={{indexo}}" addthis:title="{{post_title}}" 
                                                                                    addthis:description="{{ post_text }}">
                                                                                    <a class="addthis_button_facebook">
                                                                                        <span class="at-custom-share-span at-custom-button-color at-circular-element"><span class="at-icon-wrapper" style="line-height: 20px; height: 20px; width: 20px; background-color: rgb(128, 128, 128);"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" class="at-icon at-icon-facebook" style="width: 20px; height: 20px;"><g><path d="M22 5.16c-.406-.054-1.806-.16-3.43-.16-3.4 0-5.733 1.825-5.733 5.17v2.882H9v3.913h3.837V27h4.604V16.965h3.823l.587-3.913h-4.41v-2.5c0-1.123.347-1.903 2.198-1.903H22V5.16z" fill-rule="evenodd"></path></g></svg></span></span>
                                                                                    </a>
                                                                                    <a class="addthis_button_twitter">
                                                                                        <span class="at-custom-share-span at-custom-button-color at-circular-element"><span class="at-icon-wrapper" style="line-height: 20px; height: 20px; width: 20px; background-color: rgb(128, 128, 128);"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" class="at-icon at-icon-twitter" style="width: 20px; height: 20px;"><g><path d="M27.996 10.116c-.81.36-1.68.602-2.592.71a4.526 4.526 0 0 0 1.984-2.496 9.037 9.037 0 0 1-2.866 1.095 4.513 4.513 0 0 0-7.69 4.116 12.81 12.81 0 0 1-9.3-4.715 4.49 4.49 0 0 0-.612 2.27 4.51 4.51 0 0 0 2.008 3.755 4.495 4.495 0 0 1-2.044-.564v.057a4.515 4.515 0 0 0 3.62 4.425 4.52 4.52 0 0 1-2.04.077 4.517 4.517 0 0 0 4.217 3.134 9.055 9.055 0 0 1-5.604 1.93A9.18 9.18 0 0 1 6 23.85a12.773 12.773 0 0 0 6.918 2.027c8.3 0 12.84-6.876 12.84-12.84 0-.195-.005-.39-.014-.583a9.172 9.172 0 0 0 2.252-2.336" fill-rule="evenodd"></path></g></svg></span></span>
                                                                                    </a>
                                                                                    <a class="addthis_button_gmail">
                                                                                        <span class="at-custom-share-span at-custom-button-color at-circular-element"><span class="at-icon-wrapper" style="line-height: 20px; height: 20px; width: 20px; background-color: rgb(128, 128, 128);"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" class="at-icon at-icon-google_plusone_share" style="width: 20px; height: 20px;"><g><path d="M12 15v2.4h3.97c-.16 1.03-1.2 3.02-3.97 3.02-2.39 0-4.34-1.98-4.34-4.42s1.95-4.42 4.34-4.42c1.36 0 2.27.58 2.79 1.08l1.9-1.83C15.47 9.69 13.89 9 12 9c-3.87 0-7 3.13-7 7s3.13 7 7 7c4.04 0 6.72-2.84 6.72-6.84 0-.46-.05-.81-.11-1.16H12zm15 0h-2v-2h-2v2h-2v2h2v2h2v-2h2v-2z" fill-rule="evenodd"></path></g></svg></span></span>
                                                                                    </a>
                                                                                    <a class="addthis_button_compact">
                                                                                        <span class="at-custom-share-span at-custom-button-color at-circular-element"><span class="at-icon-wrapper" style="line-height: 20px; height: 20px; width: 20px; background-color: rgb(128, 128, 128);"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" class="at-icon at-icon-addthis" style="width: 20px; height: 20px;"><g><path d="M18 14V8h-4v6H8v4h6v6h4v-6h6v-4h-6z" fill-rule="evenodd"></path></g></svg></span></span>
                                                                                    </a>
                                                                                </div>
                                                                                <!-- End Addthis toolbox code -->
                                                                                <a class="pull-right">
                                                                                    <i class="fa fa-2x fa-comment"></i>
                                                                                </a>
                                                                                <a class="pull-right">
                                                                                    <i class="fa fa-2x fa-repeat"></i>
                                                                                </a>
                                                                                <div class="clearfix"></div>
                                                                            </section>
                                                                            <section class="authorsArea">
                                                                                {{#if user_overview}}
                                                                                <header>
                                                                                    <img src="{{ commentator_profilepic }}" height="32" width="32" class="img-circle pull-left" />
                                                                                    <h3 class="pull-left">{{commentator_name}}</h3>
                                                                                    <div class="clearfix"></div>
                                                                                </header>
                                                                                {{/if}}	
                                                                                <article>
                                                                                    {{#if user_overview}}
																					<p>{{ user_overview }}</p>
                                                                                    {{/if}}	
                                                                                </article>
                                                                            </section>                                                                            

                                                                        </div>
                                                                        <div class="clearfix"></div>
                                                                    </div>
                                                                </script>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript" src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bower_components/parallax.js/parallax.min.js"></script>
	<script type="text/javascript" src="bower_components/garand-sticky-4949b85/jquery.sticky.js"></script>
	<script type="text/javascript" src="bower_components/isotope/dist/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="bower_components/imagesloaded/imagesloaded.pkgd.min.js"></script>
	<script type="text/javascript" src="bower_components/jQuery.dotdotdot-master/src/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="bower_components/handlebars/handlebars.min.js"></script>		<script type="text/javascript" src="bower_components/infinite-scroll-master/jquery.infinitescroll.min.js"></script>
	<script type="text/javascript" src="bower_components/icheck-1.x/icheck.min.js"></script>
	<script type="text/javascript" src="bower_components/jQuery.mmenu-master/dist/js/jquery.mmenu.all.min.js"></script>
	<script type="text/javascript" src="bower_components/twitter-bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>

    <script type="text/javascript" src="http://www.parsecdn.com/js/parse-1.4.2.min.js"></script>
    <script src="https://d2876v00vfihtk.cloudfront.net/js/jquery.timeago.js"></script>

    <script src="https://cdn.jsdelivr.net/momentjs/2.13.0/moment.min.js"></script>
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#async=1"></script>
    
    <script type="text/javascript"  src="js/otherprofile.js"></script>
	<script type="text/javascript" src="assets/js/custom.js"></script>
</body>
</html>
