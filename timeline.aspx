<%@ Page Language="C#" AutoEventWireup="true" CodeFile="timeline.aspx.cs" Inherits="timeline" %>

<!doctype html>
<html>
<head>
    <title>Timeline - Ebubble</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bower_components/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/jQuery.mmenu-master/dist/css/jquery.mmenu.all.css" type="text/css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href="bower_components/icheck-1.x/skins/line/_all.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/jQuery.mmenu-master/dist/extensions/positioning/jquery.mmenu.positioning.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/dropzone-master/dist/dropzone.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/awesome-bootstrap-checkbox-master/awesome-bootstrap-checkbox.css" type="text/css" rel="stylesheet" />
    <link href="assets/css/style.css" type="text/css" rel="stylesheet" />
    <style>
        .like-pressed {
            color: red;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="hdnPostIndex" Value="1" runat="server" />
    </form>

    <div id="pageWrap" class="infinite-scroll">

        <!-- contentWrap id is used for linking to index page from registration page section 1-->
        <div id="contentWrap">

            <header class="parallax-window profileHeader" data-parallax="scroll" data-image-src="http://lorempixel.com/1366/250/">

                <div class="container">
                    <div class="row flex">
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
                                    </ul>
                                </nav>
                                <div id="searchWrap" class="panel-collapse collapse">
                                    <div id="searchBox" class="list-unstyled">
                                        <input type="search" class="search_typeahead">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="logoWrap" class="col-xs-12 col-sm-4 text-center vcenter">
                            <img src="assets/images/logo-white.png" alt="Ebubble Logo" height="64">
                        </div>
                        <section id="memberAccessWrap" class="col-xs-12 col-sm-4">
                            <div id="memberAccessBoxEmail" class="pull-left text-center">
                                <!-- memberacessbox starts -->
                                <div class="memberFormWrap">
                                    <h2 class="uppercase">Log in <span class="lowercase">or </span>Register</h2>
                                    <form method="post">
                                        <div class="emailWrap">
                                            <input type="email" name="email" id="email" placeholder="Your Email" />
                                            <p id="msgEmail" class=""></p>
                                            <button id="submitEmail" type="button" class="rounded-bordered-btn">
                                                <i class="fa fa-chevron-down"></i>
                                            </button>
                                        </div>
                                        <div class="passwordWrap hidden">
                                            <p id="usersEmail"></p>
                                            <input type="password" name="password" id="password" placeholder="Password" />
                                            <p id="msg" class=""></p>
                                            <button id="submitPassword" type="button" class="rounded-bordered-btn">
                                                <i class="fa fa-chevron-down"></i>
                                            </button>
                                        </div>

                                    </form>
                                </div>
                                <p id="forgotPasswordLink" class="pull-left text-center">
                                    <a href="#contentWrap">Forgot your Password? </a>
                                </p>

                            </div>
                            <!-- memberAccessbox ends -->

                            <div id="forgotPasswordWrap" class="pull-left text-center">
                                <!-- memberacessbox4 starts -->

                                <h2>Forgot your Password?</h2>
                                <p>We have sent an email to the email address you entered. </p>
                                <p>Please follow the link to reset your password to something secure! </p>
                                <button type="button" id="backToLoginBtn" class="rounded-bordered-btn">
                                    <!--	<i class="fa fa-chevron-down"></i>	-->
                                    Back to Log In
                                </button>

                            </div>
                            <!-- memberAccessbox4 ends -->

                            <div id="userThumb" class="pull-left text-center">
                                <!-- memberacessbox5 starts -->

                                <img src="http://placehold.it/350x150" alt="User Profile Picture" style="width: 100px; height: 100px;" class="img-circle">

                                <h2>USER NAME</h2>
                                <button class="rounded-bordered-btn" onclick="Logout();">
                                    <i class="fa fa-chevron-down"></i>
                                </button>
                            </div>
                            <!-- memberAccessbox5 ends -->

                            <div id="addPostWarp" class="pull-left text-center">
                                <figure>
                                    <a href="/v1/newbubble.aspx?oid=0"> <%--data-toggle="modal" data-target="#newPostModal"--%>
                                        <i class="fa fa-plus-circle fa-2x"></i>
                                        <div class="uppercase">
                                            New<br />
                                            <small>Post</small>
                                        </div>
                                    </a>
                                </figure>
                            </div>



                        </section>
                        <!-- memberaccess wrap ends -->
                    </div>
                    <div class="scroll-down-btn clearfix text-center">
                        <a href="#"><i class="fa fa-chevron-down fa-2x"></i></a>
                    </div>

                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </header>
            <div id="content">
                <div class="pull-up">
                    <div class="container">
                        <div class="margin-lr-15">
                            <div id="filters" class="col-xs-12">
                                <script id="filters_template" type="text/x-handlebars-template">
                                    {{#each this}}
										<li id="filter-{{@key}}" data-filter="{{this}}" class="removeFilter">

                                            <i class="fa fa-times "></i>
                                            <span class="uppercase">{{ this }}</span>
                                        </li>
                                    {{/each}}
                                </script>
                                <ul id="filtersFeed" class="list-unstyled list-inline">
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="clearfix"></div>

                    <div class="container"  id="Posts">
                        <div class="margin-lr-15">
                            <div class="feed">
                                <div class="row">
                                    <div class="grid masonry"></div>

                                    <script id="post_template" type="text/x-handlebars-template">
                                        <%--<div class="col-xs-12 {{#ifNotEquals post_type 'video_post'}} col-sm-6 {{/ifNotEquals}} grid-item">--%>
                                        <%--<div class="card {{#ifEquals post_type 'video_post'}} card-full-width {{/ifEquals}} col-sm-12" 
                                                                            data-indexo="{{indexo}}" data-indexop="{{indexop}}" >--%>
                                        <div class="col-xs-12 col-sm-6 grid-item">
                                            <div class="card col-sm-12" data-indexo="{{indexo}}" data-indexop="{{indexop}}">
                                                <header>
                                                    <img src="{{user_profilepic}}" height="64" width="64" />
                                                    <h3 class="vcenter">{{ username }}</h3>
                                                    <p class="vcenter">{{ timestamp }}</p>
                                                    <div class="clearfix"></div>
                                                </header>
                                                <article>
                                                    <p>Lorem ipsum</p>
                                                    <h2 class="uppercase"><b>{{post_title}}</b></h2>
                                                    <%--{{#if video_url}}
																				<iframe width="100%" height="315" src="{{video_url}}" frameborder="0" allowfullscreen></iframe>
                                                                                {{/if}}
																				{{#if image_url}}
																				    <img src="{{ image_url }}" width="100%" />
                                                                                {{/if}}
																				{{#if post-text}}
																				<p class="readmore dot-ellipsis dot-height-50">
                                                                                    {{ post-text }}
                                                                                </p>
                                                                                {{/if}}--%>
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
                                                            <span class="at-custom-share-span at-custom-button-color at-circular-element"><span class="at-icon-wrapper" style="line-height: 20px; height: 20px; width: 20px; background-color: rgb(128, 128, 128);">
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" class="at-icon at-icon-facebook" style="width: 20px; height: 20px;">
                                                                    <g>
                                                                        <path d="M22 5.16c-.406-.054-1.806-.16-3.43-.16-3.4 0-5.733 1.825-5.733 5.17v2.882H9v3.913h3.837V27h4.604V16.965h3.823l.587-3.913h-4.41v-2.5c0-1.123.347-1.903 2.198-1.903H22V5.16z" fill-rule="evenodd"></path>
                                                                    </g></svg></span></span>
                                                        </a>
                                                        <a class="addthis_button_twitter">
                                                            <span class="at-custom-share-span at-custom-button-color at-circular-element"><span class="at-icon-wrapper" style="line-height: 20px; height: 20px; width: 20px; background-color: rgb(128, 128, 128);">
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" class="at-icon at-icon-twitter" style="width: 20px; height: 20px;">
                                                                    <g>
                                                                        <path d="M27.996 10.116c-.81.36-1.68.602-2.592.71a4.526 4.526 0 0 0 1.984-2.496 9.037 9.037 0 0 1-2.866 1.095 4.513 4.513 0 0 0-7.69 4.116 12.81 12.81 0 0 1-9.3-4.715 4.49 4.49 0 0 0-.612 2.27 4.51 4.51 0 0 0 2.008 3.755 4.495 4.495 0 0 1-2.044-.564v.057a4.515 4.515 0 0 0 3.62 4.425 4.52 4.52 0 0 1-2.04.077 4.517 4.517 0 0 0 4.217 3.134 9.055 9.055 0 0 1-5.604 1.93A9.18 9.18 0 0 1 6 23.85a12.773 12.773 0 0 0 6.918 2.027c8.3 0 12.84-6.876 12.84-12.84 0-.195-.005-.39-.014-.583a9.172 9.172 0 0 0 2.252-2.336" fill-rule="evenodd"></path>
                                                                    </g></svg></span></span>
                                                        </a>
                                                        <a class="addthis_button_gmail">
                                                            <span class="at-custom-share-span at-custom-button-color at-circular-element"><span class="at-icon-wrapper" style="line-height: 20px; height: 20px; width: 20px; background-color: rgb(128, 128, 128);">
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" class="at-icon at-icon-google_plusone_share" style="width: 20px; height: 20px;">
                                                                    <g>
                                                                        <path d="M12 15v2.4h3.97c-.16 1.03-1.2 3.02-3.97 3.02-2.39 0-4.34-1.98-4.34-4.42s1.95-4.42 4.34-4.42c1.36 0 2.27.58 2.79 1.08l1.9-1.83C15.47 9.69 13.89 9 12 9c-3.87 0-7 3.13-7 7s3.13 7 7 7c4.04 0 6.72-2.84 6.72-6.84 0-.46-.05-.81-.11-1.16H12zm15 0h-2v-2h-2v2h-2v2h2v2h2v-2h2v-2z" fill-rule="evenodd"></path>
                                                                    </g></svg></span></span>
                                                        </a>
                                                        <a class="addthis_button_compact">
                                                            <span class="at-custom-share-span at-custom-button-color at-circular-element"><span class="at-icon-wrapper" style="line-height: 20px; height: 20px; width: 20px; background-color: rgb(128, 128, 128);">
                                                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 32 32" class="at-icon at-icon-addthis" style="width: 20px; height: 20px;">
                                                                    <g>
                                                                        <path d="M18 14V8h-4v6H8v4h6v6h4v-6h6v-4h-6z" fill-rule="evenodd"></path>
                                                                    </g></svg></span></span>
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
                    <%--<div class="container">
							<div class="margin-lr-15">
								<div class="feed">
									<div class="row">
										<div class="grid masonry"></div>
											
										<script id="post_template" type="text/x-handlebars-template">		  									
											<div class="col-xs-12 {{#ifNotEquals post_type 'video_post'}} col-sm-6 {{/ifNotEquals}} grid-item">
												<div class="card {{#ifEquals post_type 'video_post'}} card-full-width {{/ifEquals}} col-sm-12">
													<header>
													 	<img src="http://lorempixel.com/64/64/" alt="user pic" height="64" width="64" />
													 	<h3 class="vcenter">{{ username }}</h3>
													 	<p class="vcenter">{{ timestamp }}</p>
													 	<div class="clearfix"></div>
													</header>
													<article>
														<p>ifdhgiuhgu</p>
														<h2 class="uppercase"><b>{{post_title}}</b></h2>
														{{#if video_url}}
														<iframe width="100%" height="315" src="{{video_url}}" frameborder="0" allowfullscreen></iframe>
														{{/if}}
														{{#if image_url}}
														    <img src="{{ image_url }}" width="100%" alt="post image" />
														{{/if}}
														{{#if post-text}}
														<p class="readmore dot-ellipsis dot-height-50">
															{{ post-text }}
														</p>
														{{/if}}													
														<div class="clearfix"></div>
													</article>
													<section class="actionBtns">
														<a class="fav pull-left">
															<i class="fa fa-2x fa-heart"></i> {{ fav }}K
														</a>
														<a class="pull-right">
															<i class="fa fa-2x fa-comment"></i>
														</a>
														<a class="pull-right">
															<i class="fa fa-2x fa-repeat"></i>
														</a>
														<div class="clearfix"></div>
													</section>
													<section class="authorsArea">
														<header>
															<img src="{{ profile_img }}" height="32" alt="user pic" width="32" class="img-circle pull-left" />
															<h3 class="pull-left">User Name</h3>
															<div class="clearfix"></div>
														</header>
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
						</div>--%>
                    <script id="adBreak" type="text/x-handlebars-template">
                        <div id="{{id}}-filter" class="filter-wrap pull-up">
                            <div class="container">
                                <div class="margin-lr-15">
                                    <div class="col-sm-6">
                                        <div class="advert">
                                        </div>
                                    </div>
                                    <div class="col-sm-6 tagsHolder">
                                        <form method="post" class="filter-form" name="{{id}}-form">
                                            {{tags.tag}}
												<ul data-break="{{id}}" class="list-unstyled list-inline white-text">
                                                    {{#each tags}}
														<li class="label-primary">
                                                            <div class="checkbox checkbox-circle">
                                                                <input type="checkbox" name="chk" id="chk-btn-{{ @key }}" value='{{this}}'>
                                                                <label for="chk-btn-{{ @key }}">
                                                                    {{this}}
                                                                </label>


                                                            </div>
                                                        </li>
                                                    {{/each}}
                                                </ul>

                                            <button id="{{id}}-submit" type="button" class="bordered-btn applyFilters">Apply Tags</button>
                                        </form>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </script>
                </div>
            </div>
        </div>
    </div>




    <div id="newPostModal" class="bubble-modals">
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
            <div class="text-modal">
                <input type="text" class="no-borders title form-control" placeholder="Title" name="title">
                <textarea id="textpost" class="no-borders" name="textpost" placeholder="Your Text here"></textarea>
            </div>
            <div class="video-panel">
                <span class="close-panel"><i class="fa fa-times" aria-hidden="true"></i></span>
                <header>
                    <h5>Add Video</h5>
                </header>
                <input type="text" id="textvideoEmbedCode" placeholder="Place Embed Code" class="dark-bordered-input" name="textvideoEmbedCode" />
            </div>
            <div class="image-panel">
                <span class="close-panel"><i class="fa fa-times" aria-hidden="true"></i></span>
                <header>
                    <h5>Add Images</h5>
                </header>
                <form id="textuploadimages" class="uploadform dropzone no-margin dz-clickable">
                    <div class="fallback">
                        <input name="textfile" type="file" />
                    </div>
                </form>
                <div class="dotted-seperator"><span>OR</span></div>
                <input type="text" id="textimageURL" placeholder="Paste Image URL" class="dark-bordered-input" name="textimageURL" />
            </div>
            <a class="nextBtn" href="#">Next <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
        </div>


        <!--For Photo Post -->
        <div class="modal-container photo">
            <div class="image-panel">
                <i class="fa fa-camera" aria-hidden="true"></i>
                <div class="show-photo">
                    <img src="" alt="photo post" id="showimg">
                    <a href="#" class="close-photo"><i aria-hidden="true" class="fa fa-times"></i></a>
                </div>
                <div class="add-image-button">
                    <i class="fa fa-plus" aria-hidden="true"></i>
                    <button type="button">Add Image</button>
                </div>
                <div class="photo_hide_wrap">
                    <div class="dropable-image">
                        Drag and Drop Your Image Here
                    </div>
                    <!-- <form id="textuploadimages" class="uploadform dropzone no-margin dz-clickable">
						  <div class="fallback">
						    <input name="textfile" type="file" />
						  </div>
						</form> -->
                    <div class="dotted-seperator"><span>OR</span></div>
                    <input type="text" id="photoimageURL" placeholder="Paste Image URL" class="dark-bordered-input" name="textimageURL" />
                </div>
            </div>
            <div class="text-modal">
                <input type="text" class="no-borders title form-control" placeholder="Title" name="title">
                <textarea id="photopost" class="no-borders" name="photopost" placeholder="Your Text here"></textarea>
            </div>
            <a class="nextBtn" href="#">Next <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
        </div>

        <!--For Video Post -->
        <div class="modal-container video" id="videoPostPanel">
            <div class="video_hide_wrap">
                <div class="video-panel">
                    <i class="fa fa-video-camera" aria-hidden="true"></i>
                    <div id="video_post_wrap">&nbsp;</div>
                    <input type="text" id="textvideoPostEmbedCode" placeholder="Place Embed Code" class="dark-bordered-input" name="textvideoPostEmbedCode" />
                    <div class="add-image-button">
                        <i class="fa fa-plus" aria-hidden="true"></i>
                        <button type="button">Add Image</button>
                    </div>
                </div>
            </div>
            <div class="text-modal">
                <input type="text" class="no-borders title form-control" placeholder="Title" name="title">
                <textarea class="no-borders" name="photopost" placeholder="Your Text here"></textarea>
            </div>
            <a class="nextBtn" href="#">Next <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
        </div>

        <!--For Product Post -->
        <div class="modal-container product">
            <div class="image-panel">
                <i class="fa fa-camera" aria-hidden="true"></i>
                <div class="show-photo">
                    <img src="" alt="product post" id="showimg-product">
                    <a href="#" class="close-photo"><i aria-hidden="true" class="fa fa-times"></i></a>
                </div>
                <div class="add-image-button">
                    <i class="fa fa-plus" aria-hidden="true"></i>
                    <button type="button">Add Image</button>
                </div>
                <div class="photo_hide_wrap">
                    <div class="dropable-image">
                        Drag and Drop Your Image Here
                    </div>
                    <div class="dotted-seperator"><span>OR</span></div>
                    <input type="text" id="productimageURL" placeholder="Paste Image URL" class="dark-bordered-input" name="textimageURL" />
                </div>
                <div class="product-pricing">
                    <div class="icon-middle">
                        <i class="fa fa-usd top-usd" aria-hidden="true"></i>
                    </div>
                    <div class="right-inner-addon">
                        <i class="fa fa-usd" aria-hidden="true"></i>
                        <input type="text" class="form-control" placeholder="Price">
                    </div>
                    <div class="dropdown">
                        <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
                            Currency
						  <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="fa fa-btc" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-eur" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-krw" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="text-modal">
                <input type="text" class="no-borders title form-control" placeholder="Title" name="title">
                <textarea class="no-borders" name="photopost" placeholder="Product Description"></textarea>
            </div>
            <a class="nextBtn" href="#">Next <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
        </div>

        <!--For Link Post -->
        <div class="modal-container link" id="linkPostPanel">
            <div class="link_hide_wrap">
                <div class="link-panel">
                    <i class="fa fa-link" aria-hidden="true"></i>
                    <div id="link_post_wrap">&nbsp;</div>
                    <input type="text" id="linkPost" placeholder="Paste Link URL" class="dark-bordered-input" name="linkPost" />
                    <div class="link-description">
                        <h5>Page Title</h5>
                        <p>Descprition pulled from the source url...</p>
                    </div>
                </div>
            </div>
            <div class="text-modal">
                <input type="text" class="no-borders title form-control" placeholder="Title" name="title">
                <textarea class="no-borders" name="photopost" placeholder="Description"></textarea>
                <div class="use-link">
                    <a href="#">USE LINK</a>
                </div>
            </div>
            <a class="nextBtn" href="#">Next <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
        </div>

        <!--For Event Post -->
        <div class="modal-container event">
            <div class="start-date-time">
                <div class="date-picker" data-date="2014-02-03">
                    <div class="date-container">
                        <div class="start-date-icon">
                            <a href="#"><i class="fa fa-calendar" aria-hidden="true"></i></a>
                        </div>
                        <div class="start-date-title">
                            <p>Start Date</p>
                        </div>
                        <h3 class="date">
                            <i data-toggle="datepicker" data-method="subtract" data-type="d" class="fa fa-angle-up" aria-hidden="true"></i>
                            <span class="text">17th</span>
                            <i data-toggle="datepicker" data-method="add" data-type="d" class="fa fa-angle-down" aria-hidden="true"></i>
                        </h3>
                        <h2 class="month">
                            <i data-toggle="datepicker" data-method="subtract" data-type="M" class="fa fa-angle-up" aria-hidden="true"></i>
                            <span class="text">December</span>
                            <i data-toggle="datepicker" data-method="add" data-type="M" class="fa fa-angle-down" aria-hidden="true"></i>
                        </h2>
                        <h3 class="year">
                            <i data-toggle="datepicker" data-method="subtract" data-type="y" class="fa fa-angle-up" aria-hidden="true"></i>
                            <span class="text">2014</span>
                            <i data-toggle="datepicker" data-method="add" data-type="y" class="fa fa-angle-down" aria-hidden="true"></i>
                        </h3>
                    </div>
                </div>
                <input type="hidden" id="dateinput" name="date">
            </div>
            <div class="start-date-time">
                <div class="date-picker" data-date="2014-02-03">
                    <div class="date-container">
                        <div class="start-date-icon">
                            <a href="#"><i class="fa fa-calendar" aria-hidden="true"></i></a>
                        </div>
                        <div class="start-date-title">
                            <p>End Date</p>
                        </div>
                        <h3 class="date">
                            <i data-toggle="datepicker" data-method="subtract" data-type="d" class="fa fa-angle-up" aria-hidden="true"></i>
                            <span class="text">17th</span>
                            <i data-toggle="datepicker" data-method="add" data-type="d" class="fa fa-angle-down" aria-hidden="true"></i>
                        </h3>
                        <h2 class="month">
                            <i data-toggle="datepicker" data-method="subtract" data-type="M" class="fa fa-angle-up" aria-hidden="true"></i>
                            <span class="text">December</span>
                            <i data-toggle="datepicker" data-method="add" data-type="M" class="fa fa-angle-down" aria-hidden="true"></i>
                        </h2>
                        <h3 class="year">
                            <i data-toggle="datepicker" data-method="subtract" data-type="y" class="fa fa-angle-up" aria-hidden="true"></i>
                            <span class="text">2014</span>
                            <i data-toggle="datepicker" data-method="add" data-type="y" class="fa fa-angle-down" aria-hidden="true"></i>
                        </h3>
                    </div>
                </div>
            </div>
            <input type="hidden" name="date">
            <div class="location-address">
                <a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i></a>
                <div class="right-inner-addon">
                    <i class="fa fa-search" aria-hidden="true"></i>
                    <input type="search" class="form-control" placeholder="Location or Address">
                </div>
                <a href="#"><i class="fa fa-times-circle" aria-hidden="true"></i></a>
                <div class="apple-store-listing">
                    <ul>
                        <li><a href="#">Apple Store</a></li>
                        <li><a href="#">Grand Emporium</a></li>
                        <li><a href="#">Starbucks</a></li>
                        <li><a href="#">Apple Store</a></li>
                        <li><a href="#">Grand Emporium</a></li>
                    </ul>
                </div>
            </div>
            <div class="text-modal">
                <input type="text" class="no-borders title form-control" placeholder="Title" name="title">
                <textarea class="no-borders" name="photopost" placeholder="Your Text here"></textarea>
            </div>
            <a class="nextBtn" href="#">Next <i class="fa fa-chevron-right" aria-hidden="true"></i>
            </a>
        </div>
    </div>

    <div class="modal fade" id="postModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="container">
            <div class="back-btn-holder">
                <a href="#" data-dismiss="modal" aria-hidden="true"><i class="fa fa-angle-left fa-2x" aria-hidden="true"></i></a>
            </div>
        </div>
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <section class="video-post">
                        <section class="margin-lr-15">
                            <div class="row">
                                <div class="card card-full-width col-sm-12">
                                    <header>
                                        <img width="64" height="64" src="http://lorempixel.com/500/300">
                                        <h3 class="vcenter">User Name</h3>
                                        <p class="vcenter">40 mins</p>
                                        <div class="clearfix"></div>
                                    </header>
                                    <article>
                                        <h2 class="uppercase"><b>VIDEO POST TITLE</b></h2>
                                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                            <!-- Indicators -->
                                            <ol class="carousel-indicators">
                                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                                <li data-target="#myCarousel" data-slide-to="3"></li>
                                            </ol>

                                            <!-- Wrapper for slides -->
                                            <div class="carousel-inner" role="listbox">
                                                <div class="item active">
                                                    <iframe width="100%" height="315" frameborder="0" allowfullscreen="" src="https://www.youtube.com/embed/aVS4W7GZSq0"></iframe>
                                                    <section class="actionBtns">
                                                        <a class="fav pull-left">
                                                            <i class="fa fa-2x fa-heart"></i>25
                                                        </a>
                                                        <a class="pull-right">
                                                            <i class="fa fa-2x fa-comment"></i>5
                                                        </a>
                                                        <div class="clearfix"></div>
                                                    </section>
                                                </div>

                                                <div class="item">
                                                    <iframe width="100%" height="315" frameborder="0" allowfullscreen="" src="https://www.youtube.com/embed/aVS4W7GZSq0"></iframe>
                                                    <section class="actionBtns">
                                                        <a class="fav pull-left">
                                                            <i class="fa fa-2x fa-heart"></i>25
                                                        </a>
                                                        <a class="pull-right">
                                                            <i class="fa fa-2x fa-comment"></i>5
                                                        </a>
                                                        <div class="clearfix"></div>
                                                    </section>
                                                </div>

                                                <div class="item">
                                                    <iframe width="100%" height="315" frameborder="0" allowfullscreen="" src="https://www.youtube.com/embed/aVS4W7GZSq0"></iframe>
                                                    <section class="actionBtns">
                                                        <a class="fav pull-left">
                                                            <i class="fa fa-2x fa-heart"></i>25
                                                        </a>
                                                        <a class="pull-right">
                                                            <i class="fa fa-2x fa-comment"></i>5
                                                        </a>
                                                        <div class="clearfix"></div>
                                                    </section>
                                                </div>

                                                <div class="item">
                                                    <iframe width="100%" height="315" frameborder="0" allowfullscreen="" src="https://www.youtube.com/embed/aVS4W7GZSq0"></iframe>
                                                    <section class="actionBtns">
                                                        <a class="fav pull-left">
                                                            <i class="fa fa-2x fa-heart"></i>25
                                                        </a>
                                                        <a class="pull-right">
                                                            <i class="fa fa-2x fa-comment"></i>5
                                                        </a>
                                                        <div class="clearfix"></div>
                                                    </section>
                                                </div>
                                            </div>

                                            <!-- Left and right controls -->
                                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                            </a>
                                            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                            </a>
                                        </div>
                                    </article>
                                    <section class="authorsArea">
                                        <ul>
                                            <li>
                                                <header>
                                                    <img width="32" height="32" class="img-circle pull-left" src="http://lorempixel.com/500/300">
                                                    <h3 class="pull-left">User Name</h3>
                                                    <div class="clearfix"></div>
                                                </header>
                                                <article>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
                                                </article>
                                            </li>
                                            <li>
                                                <header>
                                                    <img width="32" height="32" class="img-circle pull-left" src="http://lorempixel.com/500/300">
                                                    <h3 class="pull-left">User Name</h3>
                                                    <div class="clearfix"></div>
                                                </header>
                                                <article>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
                                                </article>
                                            </li>
                                            <li>
                                                <header>
                                                    <img width="32" height="32" class="img-circle pull-left" src="http://lorempixel.com/500/300">
                                                    <h3 class="pull-left">User Name</h3>
                                                    <div class="clearfix"></div>
                                                </header>
                                                <article>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.</p>
                                                </article>
                                            </li>
                                            <li>
                                                <header>
                                                    <img width="32" height="32" class="img-circle pull-left" src="http://lorempixel.com/500/300">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" id="usr" placeholder="Add your comment">
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </header>
                                            </li>
                                        </ul>
                                    </section>
                                </div>
                            </div>
                        </section>
                    </section>
                    <section class="related-post">
                        <section class="margin-lr-15">
                            <div class="row">
                                <div class="related-post-title col-sm-12">
                                    <h2 class="uppercase">RELATED POSTS</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6">
                                    <div class="card col-sm-12">
                                        <header>
                                            <img width="64" height="64" src="http://lorempixel.com/64/64/">
                                            <h3 class="vcenter">User Name</h3>
                                            <p class="vcenter">47 mins</p>
                                            <div class="clearfix"></div>
                                        </header>
                                        <article>
                                            <h2 class="uppercase"><b>IMAGE POST TITLE</b></h2>
                                            <img width="100%" src="http://lorempixel.com/500/300">
                                            <div class="clearfix"></div>
                                        </article>
                                        <section class="actionBtns">
                                            <a class="fav pull-left">
                                                <i class="fa fa-2x fa-heart"></i>20K
                                            </a>
                                            <a class="pull-right">
                                                <i class="fa fa-2x fa-comment"></i>
                                            </a>
                                            <a class="pull-right">
                                                <i class="fa fa-2x fa-repeat"></i>
                                            </a>
                                            <div class="clearfix"></div>
                                        </section>
                                        <section class="authorsArea">
                                            <header>
                                                <img width="32" height="32" class="img-circle pull-left" src="http://lorempixel.com/64/64/">
                                                <h3 class="pull-left">User Name</h3>
                                                <div class="clearfix"></div>
                                            </header>
                                            <article>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elitm dolor sit amet consectetur, sed do eiusmod tempor.</p>
                                            </article>
                                        </section>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <div class="card col-sm-12">
                                        <header>
                                            <img width="64" height="64" src="http://lorempixel.com/64/64/">
                                            <h3 class="vcenter">User Name</h3>
                                            <p class="vcenter">47 mins</p>
                                            <div class="clearfix"></div>
                                        </header>
                                        <article>
                                            <h2 class="uppercase"><b>TEXT POST TITLE</b></h2>
                                            <img width="100%" src="http://lorempixel.com/500/300">
                                            <div class="clearfix"></div>
                                        </article>
                                        <section class="actionBtns">
                                            <a class="fav pull-left">
                                                <i class="fa fa-2x fa-heart"></i>20K
                                            </a>
                                            <a class="pull-right">
                                                <i class="fa fa-2x fa-comment"></i>
                                            </a>
                                            <a class="pull-right">
                                                <i class="fa fa-2x fa-repeat"></i>
                                            </a>
                                            <div class="clearfix"></div>
                                        </section>
                                        <section class="authorsArea">
                                            <header>
                                                <img width="32" height="32" class="img-circle pull-left" src="http://lorempixel.com/64/64/">
                                                <h3 class="pull-left">User Name</h3>
                                                <div class="clearfix"></div>
                                            </header>
                                            <article>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elitm dolor sit amet consectetur, sed do eiusmod tempor.</p>
                                            </article>
                                        </section>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 text-center">
                                    <button type="button" class="btn btn-md btn-carmine">LOAD MORE</button>
                                    <button type="button" class="btn btn-md btn-carmine" data-dismiss="modal" aria-hidden="true">BACK TO BROWSING</button>
                                </div>
                            </div>
                        </section>
                    </section>
                </div>
            </div>
        </div>
    </div>



    <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bower_components/parallax.js/parallax.min.js"></script>
    <script type="text/javascript" src="bower_components/garand-sticky-4949b85/jquery.sticky.js"></script>
    <script type="text/javascript" src="bower_components/isotope/dist/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="bower_components/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script type="text/javascript" src="bower_components/jQuery.dotdotdot-master/src/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="bower_components/handlebars/handlebars.min.js"></script>
    <script type="text/javascript" src="bower_components/infinite-scroll-master/jquery.infinitescroll.min.js"></script>
    <script type="text/javascript" src="bower_components/icheck-1.x/icheck.min.js"></script>

    <script type="text/javascript" src="bower_components/jQuery.mmenu-master/dist/js/jquery.mmenu.all.min.js"></script>

    <script type="text/javascript" src="bower_components/twitter-bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
    <script type="text/javascript" src="bower_components/tinymce/tinymce.min.js"></script>
    <script type="text/javascript" src="bower_components/dropzone-master/dist/dropzone.js"></script>
    <script type="text/javascript" src="bower_components/typeahead.js/dist/typeahead.jquery.min.js"></script>
    <script type="text/javascript" src="bower_components/typeahead.js/dist/typeahead.bundle.min.js"></script>
    <script type="text/javascript" src="bower_components/typeahead.js/dist/bloodhound.min.js"></script>
    <script type="text/javascript" src="http://www.parsecdn.com/js/parse-1.4.2.min.js"></script>
    <script src="js/timeline.js"></script>

    

    <script type="text/javascript" src="assets/js/custom.js"></script>
    <script type="text/javascript" src="assets/js/new-bubble.js"></script>
    <script type="text/javascript" src="assets/js/moment.js"></script>
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#async=1"></script>
    
    

    <script type="text/javascript">
        $(document).ready(function () {

            var substringMatcher = function (strs) {
                return function findMatches(q, cb) {
                    var matches, substringRegex;
                    // an array that will be populated with substring matches
                    matches = [];
                    // regex used to determine if a string contains the substring `q`
                    substrRegex = new RegExp(q, 'i');
                    // iterate through the pool of strings and for any string that
                    // contains the substring `q`, add it to the `matches` array
                    $.each(strs, function (i, str) {
                        if (substrRegex.test(str)) {
                            matches.push(str);
                        }
                    });
                    cb(matches);
                };
            };

            //$.getJSON("data/search.json", function (e) {
            //}).complete(function (data) {
            //    search_data = JSON.parse(data.responseText);
            //    $('#searchBox .search_typeahead').typeahead({
            //        hint: true,
            //        highlight: true,
            //        minLength: 1
            //    },
			//	{
			//	    name: 'search_data',
			//	    source: substringMatcher(search_data),
			//	    empty: function (data) {
			//	        return '<p><strong>Nothing Found</p>';
			//	    }
			//	});
            //});

        });




    </script>


<link href="/v1/bower_components/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" />
    <link href="/v1/bower_components/bootstrap-tagsinput/app.css" rel="stylesheet" />
    <script src="/v1/bower_components/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>

    <%--<script src="bower_components/bootstrap-tagsinput/bootstrap-typeahead.js"></script>
    <script src="/v1/bower_components/bootstrap-tagsinput/typeahead.bundle.js"></script>--%>
</body>
</html>
