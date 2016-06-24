<!doctype html>
<html>
    <head>
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
        <link href="bower_components/jQuery-CustomScrollbar/jquery.mCustomScrollbar.css" type="text/css" rel="stylesheet" />
        <link href="assets/css/style.css" type="text/css" rel="stylesheet" />
    </head>
    <body>
        <div id="discoverWrap" class="infinite-scroll">
            
            <!-- contentWrap id is used for linking to index page from registration page section 1-->
            <div id="contentWrap" >
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
                        <!-- <div class="icon-addon addon-lg">
                            <div id="searchBox-mob" class="list-unstyled" >
                                <input type="search" placeholder="Search" class="search_typeahead search">
                            </div>
                            <label for="search" class="glyphicon glyphicon-search" rel="tooltip" title="search"></label>
                        </div> -->
                        <div id="searchBox-mob" class="icon-addon list-unstyled addon-lg">
                            <input type="text" placeholder="Search" class="form-control search-box" id="search">
                            <label for="search" class="glyphicon glyphicon-search" rel="tooltip" title="search"></label>
                        </div>
                        <a href="#" class="plus-tag" data-target="#newPostModal" data-toggle="modal">
                            <i class="fa fa-plus-circle fa-2x plus-icon"></i>
                        </a>
                    </div>
                </header>
                <header class="parallax-window hidden-xs" data-parallax="scroll" data-image-src="assets/images/f.jpg">
                    <div class="container">
                        <div class="row">
                            <div id="menuSearchWrap" role="tablist" aria-multiselectable="true" class="col-xs-12 col-sm-4">
                                <aside id="menuSearchBtns" class="pull-left">
                                    <figure id="hamburger" >
                                        <a role="button" data-toggle="collapse"  data-parent="#menuSearchWrap" href="#collapseMenu" aria-expanded="true" aria-controls="collapseMenu">
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
                                    <nav id="collapseMenu" class="panel-collapse collapse in" > 
                                        <ul class="list-unstyled" >
                                            <li><a href="timeline.html">All Posts</a></li>
                                            <li><a href="discover.html">Discover</a></li>
                                            <li><a href="myProfile.html">My Profile</a></li>
                                        </ul>
                                    </nav>
                                    <div id="searchWrap" class="panel-collapse collapse" role="tabpanel" aria-labelledby="searchBox">                       
                                        <div id="searchBox" class="list-unstyled" >
                                            <input type="search" id="searchDesktop" placeholder="Search" class="search_typeahead search">
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div id="logoWrap" class="col-xs-12 col-sm-4 text-center vcenter">
                                <img src="assets/images/logo-white.png" alt="ebubble logo" height="64">
                            </div>

                            <div id="memberAccessWrap" class="col-xs-12 col-sm-4">
                                <div id="memberAccessBoxEmail" class="pull-left text-center"> <!-- memberacessbox starts -->
                                    <div class="memberFormWrap">
                                        <h2 class="uppercase">Log in <span class="lowercase">or </span>Register</h2>
                                        <form method="post">
                                            <div class="emailWrap">
                                                <input type="email" name="email" id="email" placeholder="Your Email" />
                                                <p id="msgEmail" class=""> </p>
                                                <button id="submitEmail" type="button" class="rounded-bordered-btn">
                                                    <i class="fa fa-chevron-down"></i>
                                                </button>
                                            </div>
                                            <div class="passwordWrap hidden">
                                                <p id="usersEmail"></p>
                                                <input type="password" name="password" id="password" placeholder="Password" />
                                                <p id="msg" class=""> </p>
                                                <button id="submitPassword" type="button" class="rounded-bordered-btn">
                                                    <i class="fa fa-chevron-down"></i>
                                                </button>
                                            </div>
                                                                                    
                                        </form>
                                    </div>
                                    <p id="forgotPasswordLink" class="pull-left text-center">
                                        <a href="#contentWrap">Forgot your Password? </a>
                                    </p>

                                </div> <!-- memberAccessboxEmail ends -->
                                
                                

                                <div id="forgotPasswordWrap" class="pull-left text-center"> <!-- memberacessbox4 starts -->
    
                                    <h2>Forgot your Password?</h2>
                                    <p> We have sent an email to the email address you entered. </p>
                                    <p> Please follow the link to reset your password to something secure! </p>
                                    <button type="button" id="backToLoginBtn" class="rounded-bordered-btn">
                                    <!--    <i class="fa fa-chevron-down"></i>  -->
                                    Back to Log In
                                    </button>

                                </div> <!-- memberAccessbox4 ends -->

                                <div id="userThumb" class="pull-left text-center"> <!-- memberacessbox5 starts -->
                                  
                                    <img src="http://placehold.it/350x150" alt="350image" style="width:100px; height:100px;" class="img-circle">

                                    <h2>USER NAME</h2>
                                    
                                        <button class="rounded-bordered-btn">
                                           <i class="fa fa-chevron-down"></i>
                                        </button>
                                         
                                </div> <!-- memberAccessbox5 ends -->

                                <div id="addPostWarp" class="pull-left text-center">
                                    <div>
                                        <a href="#" data-toggle="modal" data-target="#newPostModal">
                                            <i class="fa fa-plus-circle fa-2x"></i>
                                            <div class="uppercase">New<br/><small>Post</small></div>
                                        </a>
                                    </div>
                                </div>
                            </div> <!-- memberaccess wrap ends -->
                        </div> <!-- row flex ends -->
                        <div class="margin-lr-15">
                            <div class="tabs">
                                <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
                                    <li class="active"><a href="#Trending" data-toggle="tab">Trending</a></li>
                                    <li><a href="#Recommended" data-toggle="tab">Recommended</a></li>
                                    <!-- <li><a href="#App" data-toggle="tab">App &amp; Site</a></li> -->
                                </ul>
                            </div>
                        </div>
                        <!-- <div class="scroll-down-btn clearfix text-center"> -->
                            <a href="#" class="downArrow"><i class="fa fa-chevron-down fa-2x"></i></a>
                        <!-- </div> -->
                    </div>

                </header>
                <div id="content">
                    <div class="container">
                        <div class="margin-lr-15">
                                <div class="visible-xs">
                                    <div class="margin-lr-15 discoverTab">
                                        <div class="tabs">
                                            <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
                                                <li class="active"><a href="#Trending" data-toggle="tab">Trending</a></li>
                                                <li><a href="#Recommended" data-toggle="tab">Recommended</a></li>
                                                <!-- <li><a href="#App" data-toggle="tab">App &amp; Site</a></li> -->
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                               <div id="tab-content" class="tab-content">
                                    
                                    <div id="menu-tab" class="col-sm-12">
                                        <div id="my-tabs">
                                            
                                            <div id="my-tab-content" class="tab-content">
                                                <div class="tab-pane active" id="Trending">
                                                    <div id="tagsandtopics"> <!-- div starts  -->

                                                        <div class="col-sm-6 topics">
                                                          <div class="col-sm-12 border-bottom">
                                                               <h4><b> TOPICS </b></h4>
                                                                <ul class ="list-unstyled list-inline">
                                                                 <li> <a href="#"> #Food And Drink </a> </li>
                                                                 <li> <a href="#"> #Entertaiment </a> </li>
                                                                 <li> <a href="#"> #Food And Drink </a> </li>
                                                                 <li> <a href="#"> #Entertainment </a> </li>
                                                                 <li> <a href="#"> #Technology </a> </li>
                                                                 <li> <a href="#"> #Beauty And Style </a> </li>
                                                                 <li> <a href="#"> #Music </a> </li>
                                                                 <li> <a href="#"> #Technology </a> </li>
                                                                 <li> <a href="#"> #Beauty And Style </a> </li>
                                                                 <li> <a href="#"> #Music </a> </li>
                                                                </ul>
                                                                <div class="col-xs-3 border-mob"></div>
                                                           </div>
                                                        </div> <!-- col-sm-6 topics ends -->
                                                        

                                                        <div class="col-sm-6 tags"> 
                                                          <div class="col-sm-12 border-bottom">
                                                            <h4><b> TAGS </b></h4>
                                                            <ul class ="list-unstyled list-inline">
                                                             <li> <a href="#"> #Submission </a> </li>
                                                             <li> <a href="#"> #atar ware </a> </li>
                                                             <li> <a href="#"> #submission </a> </li>
                                                             <li> <a href="#"> #star ware </a> </li>
                                                             <li> <a href="#"> #the_wrap_zone </a> </li>
                                                             <li> <a href="#"> #movies </a> </li>
                                                             <li> <a href="#"> #fruitpie </a> </li>
                                                             <li> <a href="#"> #aixpencee </a> </li>
                                                             <li> <a href="#"> #creepy </a> </li>
                                                             <li> <a href="#"> #Sanic </a> </li>
                                                             <li> <a href="#"> #the_wrap_zone </a> </li>
                                                             <li> <a href="#"> #movies </a> </li>
                                                            </ul>
                                                          </div>
                                                        </div> <!-- col-sm-6 tags ends -->

                                                        <div class="col-sm-4 col-sm-offset-4 moretrendinbutton"> <!-- col-sm-3 col-sm-offset-3 morebutton ends -->
                                                          <div class="col-xs-12 border-entire dull_blackBtn"> 
                                                            <a href="#">More Trending Tags </a>
                                                          </div> 
                                                          <div class="clearfix"></div>
                                                        </div> <!-- col-sm-3 col-sm-offset-3 moretrendinbutton ends -->

                                                    </div> <!-- div tags and topics ends  -->
                                                    <div class="clearfix"></div>
                                                    <div id="rising-users"></div>
                                                        <script id="rising_users_template" type="text/x-handlebars-template">

                                                           <div class="col-xs-3 border-mob"></div>
                                                            <div class="col-xs-12 users">
                                                                 <h4 class="col-xs-12"><b> RISING USERS </b></h4>
                                                                 {{#each this}}
                                                                <div class="col-xs-12 col-sm-6 user ">  

                                                                <div class="col-sm-12 border-bottom ">              
                                                                    <img src="{{ fields.picprofile }}" alt="user" height="64" width="64" class="pull-left" />
                                                                    <h3   class="vcenter pull-left" >{{fields.fullname}} </h3>
                                                                    <div class="clearfix"></div>
                                                                    <p class="vcenter pull-left">Site Name</p>
                                                                    <a href="#rising_users_template" class="vcenter followbtn pull-right"><b>Follow</b></a> 
                                                                    <div class="clearfix"></div>
                                                                </div>  

                                                               </div>
                                                               {{/each}}

                                                                <div class="clearfix"></div>
                                                            </div> <!-- users ends -->
                                                            


                                                            <div class="col-sm-4 col-sm-offset-4 moretrendinbutton"> <!-- col-sm-3 col-sm-offset-3 morebutton ends -->
                                                              <div class="col-xs-12 border-entire dull_blackBtn"> 
                                                                <a href="#">More Trending Tags </a>
                                                              </div> 
                                                            </div> <!-- col-sm-3 col-sm-offset-3 moretrendinbutton ends -->

                                                            <div class="clearfix"></div>
                                                        


                                                    </script>
                                                    <div class="feed">
                                                        <div class="row">
                                                            <div class="grid masonry"></div>
                                                            <script id="post_template" type="text/x-handlebars-template">
                                                                <div class="xs-no-padding  {{#ifEquals post_type 'image_post'}} imagepost {{/ifEquals}} {{#ifEquals post_type 'video_post'}} col-sm-12 {{/ifEquals}} {{#ifNotEquals post_type 'video_post'}} col-sm-6 {{/ifNotEquals}} grid-item">
                                                                    <div class="card {{#ifEquals post_type 'video_post'}} card-full-width {{/ifEquals}} {{#ifNotEquals post_type 'image_post'}} col-sm-12{{/ifNotEquals}}">
                                                                        <header class="{{#ifEquals post_type 'image_post'}} add-15-margin-lr {{/ifEquals}}">
                                                                            <div class="{{#ifEquals post_type 'video_post'}} col-sm-1 {{/ifEquals}} col-xs-2 noPadding_lr">
                                                                                <img src="{{ profile_img }}" alt="user pic" />
                                                                            </div>
                                                                            <h3 class="vcenter {{#ifEquals post_type 'video_post'}} col-sm-10 {{/ifEquals}}  col-xs-7">{{ username }}</h3>
                                                                            <p class="vcenter {{#ifEquals post_type 'video_post'}} col-sm-1 {{/ifEquals}} noPadding_lr col-xs-2">{{ timestamp }}</p>
                                                                            <div class="clearfix"></div>
                                                                        </header>
                                                                        <article>
                                                                            <div class="{{#ifEquals post_type 'image_post'}} col-sm-12 {{/ifEquals}}">
                                                                                <h2 class="uppercase post-title"><b>{{post_title}}</b></h2> {{#if video_url}}
                                                                                <iframe width="100%" height="315" src="{{video_url}}" allowfullscreen></iframe>
                                                                                {{/if}}
                                                                            </div>
                                                                            {{#if image_url}}
                                                                            <div class="imgHolder">
                                                                                <img src="{{ image_url }}" class="{{#ifEquals post_type 'image_post'}} imagepost-img {{/ifEquals}}" width="100%" alt="post image" />
                                                                            </div>
                                                                            {{/if}}
                                                                            <div class="{{#ifEquals post_type 'image_post'}} col-sm-12 {{/ifEquals}}">
                                                                                {{#if post-text}}
                                                                                <p class="readmore dot-ellipsis dot-height-50">
                                                                                    {{ post-text }}
                                                                                </p>
                                                                                {{/if}} {{#ifEquals post_type 'text_post'}}
                                                                                <p class="text-center">
                                                                                    <a href="#" class="link ">Keep Reading</a>
                                                                                </p>
                                                                                {{/ifEquals}}
                                                                                <div class="clearfix"></div>
                                                                            </div>
                                                                        </article>
                                                                        <section class="actionBtns  {{#ifEquals post_type 'image_post'}} add-margin-15 {{/ifEquals}}">
                                                                            <a href="#" class="fav pull-left icon_scale ">
                                                                                <i class="fa fa-2x icon_scale fa-heart"></i> {{ fav }}K
                                                                            </a>
                                                                            <a href="#" class="pull-right icon_scale">
                                                                                <i class="fa fa-2x fa-comment"></i>
                                                                            </a>
                                                                            <a href="#" class="pull-right icon_scale">
                                                                                <i class="fa fa-2x fa-retweet"></i>
                                                                            </a>
                                                                            <div class="clearfix"></div>
                                                                        </section>
                                                                        <section class="authorsArea {{#ifEquals post_type 'image_post'}} col-sm-12 {{/ifEquals}}">
                                                                            <header>
                                                                                <img src="{{ profile_img }}" height="32" width="32" class="img-circle pull-left" />
                                                                                <h3 class="pull-left">User Name</h3>
                                                                                <div class="clearfix"></div>
                                                                            </header>
                                                                            <article>
                                                                                {{#if user_overview}}
                                                                                <p>{{ user_overview }}</p>
                                                                                {{/if}}
                                                                            </article>
                                                                        </section>
                                                                        <div class="clearfix"></div>
                                                                    </div>
                                                                    <div class="clearfix"></div>
                                                                </div>
                                                            </script>
                                                        </div>  
                                                    </div>  

                                                </div> <!-- class="tab-pane active" id="Trending" ends -->

                                                <div class="tab-pane" id="Recommended">
                                                    <div class="container">
                                                        <div class="margin-lr-15">
                                                            <div class="feed">
                                                                <div class="row">
                                                                    
                                                                </div>  
                                                            </div>                          
                                                        </div>                                  
                                                    </div>
                                                </div> <!-- class="tab-pane" id="Recommended" ends -->

                                            </div> <!-- id="my-tab-content" class="tab-content"  -->

                                        </div> <!-- my tabs close -->
                                    </div> <!-- id="menu-tab" class="col-xs-12" ends -->

                               </div> <!-- id="my-tab-content" class="tab-content" ends -->
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
                                                    
                                                        <button id="{{id}}-submit" type="button" class="bordered-btn applyFilters" >Apply Tags</button>
                                                    </form>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>
                                </script>
                        </div> <!-- section id menu-tab ends -->      
                    </div>

                    <div class="clearfix"></div>
                </div>
            </div>
        </div>

        <!-- For loader Overlay -->
        <div class="loader_overlay hidden">
          <div>
           <div class='uil-default-css' style='transform:scale(0.32);'><div style='top:80px;left:97px;width:6px;height:40px;background:#ffffff;-webkit-transform:rotate(0deg) translate(0,-60px);transform:rotate(0deg) translate(0,-60px);border-radius:10px;position:absolute;'></div><div style='top:80px;left:97px;width:6px;height:40px;background:#ffffff;-webkit-transform:rotate(30deg) translate(0,-60px);transform:rotate(30deg) translate(0,-60px);border-radius:10px;position:absolute;'></div><div style='top:80px;left:97px;width:6px;height:40px;background:#ffffff;-webkit-transform:rotate(60deg) translate(0,-60px);transform:rotate(60deg) translate(0,-60px);border-radius:10px;position:absolute;'></div><div style='top:80px;left:97px;width:6px;height:40px;background:#ffffff;-webkit-transform:rotate(90deg) translate(0,-60px);transform:rotate(90deg) translate(0,-60px);border-radius:10px;position:absolute;'></div><div style='top:80px;left:97px;width:6px;height:40px;background:#ffffff;-webkit-transform:rotate(120deg) translate(0,-60px);transform:rotate(120deg) translate(0,-60px);border-radius:10px;position:absolute;'></div><div style='top:80px;left:97px;width:6px;height:40px;background:#ffffff;-webkit-transform:rotate(150deg) translate(0,-60px);transform:rotate(150deg) translate(0,-60px);border-radius:10px;position:absolute;'></div><div style='top:80px;left:97px;width:6px;height:40px;background:#ffffff;-webkit-transform:rotate(180deg) translate(0,-60px);transform:rotate(180deg) translate(0,-60px);border-radius:10px;position:absolute;'></div><div style='top:80px;left:97px;width:6px;height:40px;background:#ffffff;-webkit-transform:rotate(210deg) translate(0,-60px);transform:rotate(210deg) translate(0,-60px);border-radius:10px;position:absolute;'></div><div style='top:80px;left:97px;width:6px;height:40px;background:#ffffff;-webkit-transform:rotate(240deg) translate(0,-60px);transform:rotate(240deg) translate(0,-60px);border-radius:10px;position:absolute;'></div><div style='top:80px;left:97px;width:6px;height:40px;background:#ffffff;-webkit-transform:rotate(270deg) translate(0,-60px);transform:rotate(270deg) translate(0,-60px);border-radius:10px;position:absolute;'></div><div style='top:80px;left:97px;width:6px;height:40px;background:#ffffff;-webkit-transform:rotate(300deg) translate(0,-60px);transform:rotate(300deg) translate(0,-60px);border-radius:10px;position:absolute;'></div><div style='top:80px;left:97px;width:6px;height:40px;background:#ffffff;-webkit-transform:rotate(330deg) translate(0,-60px);transform:rotate(330deg) translate(0,-60px);border-radius:10px;position:absolute;'></div></div>
          </div>
        </div>
    <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bower_components/parallax.js/parallax.min.js"></script>
    <script type="text/javascript" src="bower_components/garand-sticky-4949b85/jquery.sticky.js"></script>
    <script type="text/javascript" src="bower_components/isotope/dist/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="bower_components/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script type="text/javascript" src="bower_components/jQuery.dotdotdot-master/src/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="bower_components/handlebars/handlebars.min.js"></script>        <script type="text/javascript" src="bower_components/infinite-scroll-master/jquery.infinitescroll.min.js"></script>
    <script type="text/javascript" src="bower_components/icheck-1.x/icheck.min.js"></script>

    <script type="text/javascript" src="bower_components/jQuery.mmenu-master/dist/js/jquery.mmenu.all.min.js"></script>

    <script type="text/javascript" src="bower_components/twitter-bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
    <script type="text/javascript" src="bower_components/tinymce/tinymce.min.js"></script>
    <script type="text/javascript" src="bower_components/dropzone-master/dist/dropzone.js"></script>
    <script type="text/javascript" src="bower_components/typeahead.js/dist/typeahead.jquery.min.js"></script>
    <script type="text/javascript" src="bower_components/typeahead.js/dist/typeahead.bundle.min.js"></script>
    <script type="text/javascript" src="bower_components/typeahead.js/dist/bloodhound.min.js"></script>
    <script type="text/javascript" src="bower_components/jQuery-CustomScrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="assets/js/custom.js"></script>
    
    </script>
    </body>
</html>