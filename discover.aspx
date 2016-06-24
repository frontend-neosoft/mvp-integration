<%@ Page Language="C#" AutoEventWireup="true" CodeFile="discover.aspx.cs" Inherits="discover" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Discover - Ebubble MVP</title>
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
    <div id="discoverWrap" class="infinite-scroll">

        <!-- contentWrap id is used for linking to index page from registration page section 1-->
        <div id="contentWrap">
            <header class="parallax-window" data-parallax="scroll" data-image-src="http://lorempixel.com/1366/250/">
                <div class="container">
                    <div class="row">
                        <section id="menuSearchWrap" role="tablist" aria-multiselectable="true" class="col-xs-12 col-sm-4">
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

                            <section class="pull-right menu-wrap">
                                <nav id="collapseMenu" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="menu">
                                    <ul class="list-unstyled">
                                        <li><a href="timeline.html">All Posts</a></li>
                                        <li><a href="discover.html">Discover</a></li>
                                        <li><a href="myProfile.html">My Profile</a></li>
                                    </ul>
                                </nav>
                                <div id="searchWrap" class="panel-collapse collapse" role="tabpanel" aria-labelledby="search">
                                    <div id="searchBox" class="list-unstyled">
                                        <input type="search" class="search_typeahead">
                                    </div>
                                </div>
                            </section>

                        </section>

                        <section id="logoWrap" class="col-xs-12 col-sm-4 text-center vcenter">
                            <img src="assets/images/logo-white.png" alt="ebubble logo" height="64">
                        </section>

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
                            <!-- memberAccessboxEmail ends -->



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

                                <img src="http://placehold.it/350x150" alt="350image" style="width: 100px; height: 100px;" class="img-circle">

                                <h2>USER NAME</h2>

                                <button class="rounded-bordered-btn">
                                    <i class="fa fa-chevron-down"></i>
                                </button>

                            </div>
                            <!-- memberAccessbox5 ends -->

                            <div id="addPostWarp" class="pull-left text-center">
                                <figure>
                                    <a href="/v1/newbubble.aspx?oid=0" ><!-- data-toggle="modal" data-target="#newPostModal" -->
                                        <i class="fa fa-plus-circle fa-2x"></i>
                                        <figcaption class="uppercase">New<br />
                                            <small>Post</small></figcaption>
                                    </a>
                                </figure>
                            </div>
                        </section>
                        <!-- memberaccess wrap ends -->
                    </div>
                    <!-- row flex ends -->

                    <div class="margin-lr-15">
                        <div class="tabs">
                            <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
                                <li class="active"><a href="#Trending" data-toggle="tab">Trending</a></li>
                                <li><a href="#Reccomended" data-toggle="tab">Reccomended</a></li>
                                <!-- <li><a href="#App" data-toggle="tab">App &amp; Site</a></li> -->
                            </ul>
                        </div>
                    </div>
                    <div class="scroll-down-btn clearfix text-center">
                        <a href="#"><i class="fa fa-chevron-down fa-2x"></i></a>
                    </div>
                </div>

            </header>
            <section id="content">
                <div class="container">
                    <section class="margin-lr-15">

                        <div id="tab-content" class="tab-content">

                            <section id="menu-tab" class="col-xs-12">
                                <div id="my-tabs">

                                    <div id="my-tab-content" class="tab-content">
                                        <div class="tab-pane active" id="Trending">
                                            <div id="tagsandtopics">
                                                <!-- div starts  -->

                                                <div class="col-sm-6 topics">
                                                    <div class="col-xs-12 border-bottom">
                                                        <h4><b>TOPICS </b></h4>
                                                        <ul class="list-unstyled list-inline">
                                                            <li><a href="/v1/timeline.aspx?tag=Cars And Transportation">#Cars And Transportation </a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Sports">#Sports </a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Food And Drink">#Food And Drink </a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Health">#Health</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Entertainment And Music">#Entertainment And Music </a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Education And Reference">#Education And Reference </a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Technology">#Technology </a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Beauty And Style">#Beauty And Style </a></li>
                                                            <%--<li><a href="#">#Food And Drink </a></li>
                                                            <li><a href="#">#Entertaiment </a></li>
                                                            <li><a href="#">#Food And Drink </a></li>
                                                            <li><a href="#">#Entertainment </a></li>
                                                            <li><a href="#">#Technology </a></li>
                                                            <li><a href="#">#Beauty And Style </a></li>
                                                            <li><a href="#">#Music </a></li>
                                                            <li><a href="#">#Technology </a></li>
                                                            <li><a href="#">#Beauty And Style </a></li>
                                                            <li><a href="#">#Music </a></li>--%>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- col-sm-6 topics ends -->


                                                <div class="col-sm-6 tags">
                                                    <div class="col-xs-12 border-bottom">
                                                        <h4><b>TAGS </b></h4>
                                                        <ul class="list-unstyled list-inline">

                                                            <li><a href="/v1/timeline.aspx?tag=Arts And Humanities">#Arts And Humanities </a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Business And Finance">#Business And Finance </a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Employment And Work">#Employment And Work </a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Environment">#Environment </a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Games And Recreation">#Games And Recreation</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Home And Garden">#Home And Garden</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=International">#International</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Local Businesses">#Local Businesses</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Marketing And Advertising">#Marketing And Advertising</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=News And Media">#News And Media</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Pets">#Pets</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Politics And Government">#Politics And Government</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Pregnancy And Parenting">#Pregnancy And Parenting</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Shopping And Services">#Shopping And Services</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Science And Mathematics">#Science And Mathematics</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Social Science">#Social Science</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Society And Culture">#Society And Culture</a></li>
                                                            <li><a href="/v1/timeline.aspx?tag=Travel">#Travel</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <!-- col-sm-6 tags ends -->

                                                <div class="col-sm-4 col-sm-offset-4 moretrendinbutton">
                                                    <!-- col-sm-3 col-sm-offset-3 morebutton ends -->
                                                    <div class="col-xs-12 border-entire">
                                                        <a href="#">More Trending Tags </a>
                                                    </div>
                                                </div>
                                                <!-- col-sm-3 col-sm-offset-3 moretrendinbutton ends -->

                                            </div>
                                            <!-- div tags and topics ends  -->
                                            <div class="clearfix"></div>

                                            <div id="rising-users"></div>

                                            <script id="rising_users_template" type="text/x-handlebars-template">

                                                <div class="col-xs-3 border-mob"></div>
                                                <div class="col-xs-12 users">
                                                    <h4 class="col-xs-12"><b>RISING USERS </b></h4>
                                                    {{#each this}}
											            	  	<div class="col-xs-12 col-sm-6 user ">

                                                                      <div class="col-sm-12 border-bottom ">
                                                                          <a href="/v1/otherprofile.aspx?pid={{fields.indexop}}">
                                                                          {{#if fields.picprofile}}
																 	<img src="{{fields.picprofile}}" alt="user" height="64" width="64" class="pull-left" />
                                                                          {{else}}
    															 	<img src="https://d2876v00vfihtk.cloudfront.net/tools/icons/EBUBBLE_SHAPE_USER128.png" alt="user" height="64" width="64" class="pull-left" />
                                                                          {{/if}}
																 	<h3 class="vcenter pull-left">{{fields.fullname}}</h3></a>
                                                                          <div class="clearfix"></div>
                                                                          <%--<p class="vcenter pull-left">Site Name</p>--%>
                                                                          {{#if fields.isloggedin}}
                                                                          <h5 class="vcenter followbtn pull-right" data-indexop="{{fields.indexop}}" data-cntfollow="{{fields.cntfollowers}}"><b style="cursor:pointer;">{{#if fields.isfollowing}}Unfollow{{else}}Follow{{/if}}</b></h5>
                                                                          {{/if}}
                                                                          <div class="clearfix"></div>
                                                                      </div>

                                                                  </div>
                                                    {{/each}}

	                                                            <div class="clearfix"></div>
                                                </div>
                                                <!-- users ends -->



                                                <div class="col-sm-4 col-sm-offset-4 moretrendinbutton">
                                                    <!-- col-sm-3 col-sm-offset-3 morebutton ends -->
                                                    <div class="col-xs-12 border-entire">
                                                        <a href="#">More Trending Tags </a>
                                                    </div>
                                                </div>
                                                <!-- col-sm-3 col-sm-offset-3 moretrendinbutton ends -->

                                                <div class="clearfix"></div>



                                            </script>
                                            <!-- users ends -->



                                            <div class="col-sm-4 col-sm-offset-4 moretrendinbutton">
                                                <!-- col-sm-3 col-sm-offset-3 morebutton ends -->
                                                <div class="col-xs-12 border-entire">
                                                    <a href="#">More Trending Tags </a>
                                                </div>
                                            </div>
                                            <!-- col-sm-3 col-sm-offset-3 moretrendinbutton ends -->

                                            <div class="clearfix"></div>
                                        </div>
                                        <!-- div rising-users ends  -->
                                        <%--<div class="tab-pane" id="Posts">--%>
                                            <div class="container" id="Posts">
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
                                        <%--</div>--%>
                                        <%--<section class="feed">
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
                                                                    <i class="fa fa-2x fa-heart"></i>{{ fav }}K
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
                                            
                                        </section>--%>
                                    </div>
                                    <!-- class="tab-pane active" id="Trending" ends -->

                                    <div class="tab-pane" id="Reccomended">
                                        <div class="container">
                                            <section class="margin-lr-15">
                                                <section class="feed">
                                                    <div class="row">
                                                    </div>
                                                </section>
                                            </section>
                                        </div>
                                    </div>
                                    <!-- class="tab-pane" id="Reccomended" ends -->

                                </div>
                                <!-- id="my-tab-content" class="tab-content"  -->
                        </div>
                        <!-- my tabs close -->
                    </section>
                    <!-- id="menu-tab" class="col-xs-12" ends -->

                </div>
                <!-- id="my-tab-content" class="tab-content" ends -->
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
            </section>
            <!-- section id menu-tab ends -->
        </div>

        <div class="clearfix"></div>
        </section>
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
    <script src="https://d2876v00vfihtk.cloudfront.net/js/jquery.timeago.js"></script>
    <script src="https://cdn.jsdelivr.net/momentjs/2.13.0/moment.min.js"></script>
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#async=1"></script>
    <script src="js/discover.js"></script>
    <script type="text/javascript" src="assets/js/custom.js"></script>
    
    <%--    </form>--%>
</body>
</html>
