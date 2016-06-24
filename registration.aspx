<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="Generator" content="EditPlus®">
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration</title>

    <link href="bower_components/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/jQuery.mmenu-master/dist/css/jquery.mmenu.all.css" type="text/css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href="bower_components/awesome-bootstrap-checkbox-master/awesome-bootstrap-checkbox.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/icheck-1.x/skins/line/_all.css" type="text/css" rel="stylesheet" />
    <link href="assets/css/style.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/jQuery.mmenu-master/dist/extensions/positioning/jquery.mmenu.positioning.css" type="text/css" rel="stylesheet" />


</head>

<body>
    <div id="registrationWrapper">
        <div class="container">
            <div class="row">
                <div id="registrationWizard" class="">

                    <section id="regHomePage" class="regPane">
                        <!-- section id="redHomepage" class="regPane" starts -->
                        <header>
                            <div class="col-md-1 col-md-offset-2 backbtn">
                                <a href="index.html#contentWrap" class="uppercase">
                                    <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>BACK
                                </a>
                            </div>
                            <div class="col-md-6">
                                <div class="logo">
                                    <img src="assets/images/logo-white.png">
                                </div>

                                <div class="textcontent">
                                    <h4><b>Welcome,</b></h4>
                                    <p>We're excited you're here!</p>
                                    <p>We just need a few things from you to set up your account.</p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </header>

                        <div class="col-sm-6 col-sm-offset-3">
                            <form id="regHomeForm">
                                <div class="form-group">
                                    <label for="firstname">
                                        <p>First Name</p>
                                    </label>
                                    <input type="name" class="form-control" id="firstname" placeholder="E.g. William, Amir, etc" required>
                                </div>

                                <div class="form-group">
                                    <label for="lastname">
                                        <p>Last Name</p>
                                    </label>
                                    <input type="name" class="form-control" id="lastname" placeholder="E.g. Obama, Trump, etc">
                                </div>

                                <div class="form-group">
                                    <label for="emailaddress">
                                        <p>Email Address</p>
                                    </label>
                                    <input type="email" class="form-control" id="emailaddress" placeholder="E.g. xyz@gmail.com etc" required>
                                </div>

                                <div class="form-group">
                                    <label for="inputPassword">
                                        <p>Enter a Password</p>
                                    </label>
                                    <div class="input-group passwordGroup form-control">
                                        <input type="password" class="form-control" id="inputPassword" placeholder="E.g. ***** etc">
                                        <span class="input-group-addon btn">
                                            <button type="button" id="showPassword"><i class="glyphicon glyphicon-eye-open"></i></button>
                                        </span>
                                    </div>
                                    <label>
                                        Should be atleast 8 characters long
                                        <br>
                                        and needs to include one number(1,2,3)
                                        <br>
                                        or special character(#,@,!)</label>
                                </div>

                                <div class="col-sm-8 termsandconditionsChk">
                                    <div class="checkbox checkbox-circle">
                                        <input type="checkbox" name="chk" id="termsChk" value=''>
                                        <label for="chk-btn">
                                            I agree with the <a href="#">Terms of service </a>
                                        </label>
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <div class="continue">
                                        <a href="#">
                                            <p>Continue</p>
                                        </a>
                                    </div>
                                </div>

                            </form>

                        </div>
                    </section>
                    <!-- section id="redHomepage" class="regPane" ends -->

                    <section id="pickTopics" class="regPane">
                        <!-- section id="pickTopics" class="regPane" starts -->
                        <header>
                            <div class="col-md-1 col-md-offset-2 backbtn">
                                <a href="#" class="uppercase">
                                    <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>BACK
                                </a>
                            </div>
                            <div class="col-md-6">
                                <div class="logo">
                                    <img src="assets/images/logo-white.png">
                                </div>
                                <div class="textcontent text-center">
                                    <p><b>Welcome,</b></p>
                                    <p>Let's get started setting up your account</p>
                                    <p>by picking topics you want to follow.</p>
                                </div>
                            </div>
                            <div class="col-md-1 skipBtn">
                                <a href="#" class="uppercase">SKIP <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </header>
                        <div class="row topicsWrap">
                            <div class="col-xs-6 col-sm-4 col-md-2">
                                <div id="art" class="topic">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                    <div class="topic_container">
                                        <p class="content_topic">ART</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-2">
                                <div id="tech" class="topic">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                    <div class="topic_container">
                                        <p class="content_topic">TECHNOLOGY</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-2">
                                <div id="music1" class="topic">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                    <div class="topic_container">
                                        <p class="content_topic">MUSIC</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-2">
                                <div id="pop_culture" class="topic">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                    <div class="topic_container">
                                        <p class="content_topic">POP CULTURE</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-2">
                                <div id="food" class="topic">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                    <div class="topic_container">
                                        <p class="content_topic">FOOD</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-2">
                                <div id="mixology" class="topic">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                    <div class="topic_container">
                                        <p class="content_topic">MIXOLOGY</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-2">
                                <div id="movies1" class="topic">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                    <div class="topic_container">
                                        <p class="content_topic">MOVIES</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-2">
                                <div id="beauty_and_style" class="topic">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                    <div class="topic_container">
                                        <p class="content_topic">BEAUTY & STYLE</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-2">
                                <div id="worldnews" class="topic">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                    <div class="topic_container">
                                        <p class="content_topic">WORLD NEWS</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-2">
                                <div id="cartoons" class="topic">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                    <div class="topic_container">
                                        <p class="content_topic">CARTOONS</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-2">
                                <div id="movies" class="topic">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                    <div class="topic_container">
                                        <p class="content_topic">MOVIES</p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-6 col-sm-4 col-md-2">
                                <div id="beautyandstyle" class="topic">
                                    <i class="fa fa-check-circle" aria-hidden="true"></i>
                                    <div class="topic_container">
                                        <p class="content_topic">BEAUTY & STYLE</p>
                                    </div>

                                </div>
                            </div>


                            <div class="clearfix"></div>

                            <div class="col-md-4 col-md-offset-4 text-center">
                                <!-- col-md starts -->
                                <a class="text-white center-block " class="">LOAD MORE TOPICS</a>
                                <br />
                                <a class="continue text-white center-block button-border">Continue</a>
                            </div>
                        </div>
                    </section>
                    <!-- section id="pickTopics" class="regPane" ends -->

                    <section id="getStarted" class="regPane">
                        <!-- section id="getStarted" class="regPane" starts -->
                        <header>
                            <div class="col-md-1 col-md-offset-2 backbtn">
                                <a href="#" class="uppercase previous">
                                    <span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>BACK
                                </a>
                            </div>
                            <div class="col-md-6">
                                <div class="logo">
                                    <img src="assets/images/logo-white.png">
                                </div>
                                <div class="textcontent text-center">
                                    <p><b>Thanks, First Name.</b></p>
                                    <p>You will see your interests in your feed.</p>
                                    <p>There are many things you can do with Ebubble.</p>
                                    <p>Let's get started!</p>
                                </div>
                            </div>
                            <div class="col-md-1 skipBtn">
                                <a href="timeline.html" class="uppercase">SKIP <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </header>
                        <div class="content text-center">

                            <div class="col-xs-12 col-sm-4 col-md-2 col-md-offset-2">
                                <div id="art" class="">
                                    <i class="fa fa-picture-o fa-3x" aria-hidden="true"></i>
                                    <br />
                                    <a href="newbubble.html" class="center-block button-border">Publish your first post</a>
                                </div>
                            </div>

                            <div class="col-xs-12 col-sm-4 col-md-2 col-md-offset-1">
                                <div id="tech" class="">
                                    <i class="fa fa-picture-o fa-3x" aria-hidden="true"></i>
                                    <br />
                                    <a href="#" class="push-down">
                                        <p>OR</p>
                                        <p>Back to what you were doing!</p>
                                    </a>
                                </div>
                            </div>

                            <div class="col-xs-12 col-sm-4 col-md-2 col-md-offset-1">
                                <div id="music1" class="">
                                    <i class="fa fa-picture-o fa-3x" aria-hidden="true"></i>
                                    <br />

                                    <a href="timeline.html" class="center-block button-border">Browse Posts</a>
                                </div>
                            </div>

                            <div class="clearfix"></div>

                        </div>
                    </section>
                    <!-- section id="getStarted" class="regPane" ends -->
                </div>
                <!--RegistrationWizard div ends-->
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
    <script type="text/javascript" src="assets/js/custom.js"></script>
    <script src="js/registration.js"></script>
</body>
</html>
