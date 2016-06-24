<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewbubble.aspx.cs" Inherits="viewbubble" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bower_components/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/jQuery.mmenu-master/dist/css/jquery.mmenu.all.css" type="text/css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href="bower_components/icheck-1.x/skins/line/_all.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/jQuery.mmenu-master/dist/extensions/positioning/jquery.mmenu.positioning.css" type="text/css" rel="stylesheet" />
    <link href="bower_components/dropzone-master/dist/dropzone.css" type="text/css" rel="stylesheet" />
    <link href="assets/css/style.css" type="text/css" rel="stylesheet" />
    <style>
        .like-pressed {
            color: red !important;
        }

        .boxtag_medium {
            font-family: Lato,sans-serif;
            display: inline-block;
            padding: 3px 10px 5px 10px;
            border: 1px solid #d7d7d7;
            border-radius: 21px;
            background-clip: padding-box;
            font-size: 13px;
            margin: 5px;
            color: #5e5e5e;
        }
        /*comment*/
        .profile-picture {
            width: 45px !important;
            height: 45px !important;
        }

        .textarea {
            font-family: Lato,sans-serif !important;
            font-size: 14px !important;
            color: #333 !important;
        }

        .navigation li {
            font-family: Lato,sans-serif !important;
            font-size: 14px !important;
            color: black !important;
            font-weight: 600 !important;
        }

        .highlight-background {
            font-family: Lato,sans-serif !important;
            font-size: 14px !important;
        }


        ul#comment-list li.comment .name {
            font-family: Lato,sans-serif !important;
            font-size: 14px !important;
            color: #337AB7 !important;
        }

        ul#comment-list li.comment time {
            font-family: Lato,sans-serif !important;
            font-size: 12px !important;
            color: #333 !important;
        }

        ul#comment-list li.comment .wrapper {
            padding: 5px 0px 0px 5px;
        }

        ul#comment-list li.comment .actions > * {
            float: right !important;
            margin: 0px !important;
            font-family: Lato,sans-serif !important;
            font-size: 12px !important;
            color: #337AB7 !important;
            text-decoration: underline !important;
            font-style: italic !important;
            padding: 1px !important;
        }

        ul#comment-list li.comment .wrapper .content {
            margin-bottom: 5px !important;
        }
    </style>
</head>
<body>
    <div class="" id="postModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                                        <img width="64" height="64" id="userprofilepic">
                                        <h3 class="vcenter" id="userfullname"></h3>
                                        <p class="vcenter">
                                            <span id="lbldate"></span>
                                        </p>
                                        <div class="clearfix"></div>
                                    </header>
                                    <article>
                                        <h2 class="uppercase"><b><span id="txtbubbletitle"></span></b></h2>
                                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                        </div>
                                    </article>
                                    <div id="dvtag"></div>
                                    <br />
                                    <div id="dvevent">
                                        <label id='lbleventyearfrom'></label>
                                        <br />
                                        <label id='lbleventmonthfrom'></label>
                                        <br />
                                        <label id='lbleventdayfrom'></label>
                                        <br />
                                        <label id='lbleventtimefrom'></label>
                                        <br />
                                        <label id='lbleventyearto'></label>
                                        <br />
                                        <label id='lbleventmonthto'></label>
                                        <br />
                                        <label id='lbleventdayto'></label>
                                        <br />
                                        <label id='lbleventtimeto'></label>
                                        <br />
                                    </div>
                                    <section class="authorsArea">
                                        <div id="dvcommentbox" clientidmode="Static" style='margin-bottom: 20px; width: 727px;'>
                                            <div id="lblcomment" style='font-style: normal; font-weight: 200; color: #333; background-color: white; border-left: 1px solid #e9e9e9; border-right: 1px solid #e9e9e9; border-top: 1px solid #e9e9e9; border-top-left-radius: 4px; border-top-right-radius: 4px; padding: 10px; border-bottom: 1px #ececec solid; font-size: 19px; font-family: Lato,sans-serif; color: #333; line-height: 21px; font-weight: bold;'>
                                                Comments
                                                <input type="hidden" value="" id="lblcommentscount"/>
                                                <input type="hidden" value="Like" id="lbllikescount"/>
                                               <%-- <label id="lblcommentscount" clientidmode="Static" style="font-weight: normal; font-size: 15px;" ></label>
                                                <div id="dvlike" style="background-color: #1f69b2; display: inline-block; border: 1px solid #d7d7d7; border-radius: 13px; height: 27px; vertical-align: top; float: right; position: relative; margin-top: -2px">
                                                    <div id="imglike" style="position: absolute; top: 2px; left: 10px;">
                                                        <div class='glyph-icon icon-typicons-heart' style='font-size: 12px; color: #fff;'></div>
                                                    </div>
                                                   <label id='lbllikescount' clientidmode='Static' style='font-family: Lato,sans-serif; color: #fff; font-size: 12px; position: absolute; right: 10px; top: 2px;'>0</label>
                                                </div>--%>
                                                 <input type='button' id='btnlike' clientidmode='Static' disabled='disabled' value='Like' onclick='UpdateLike();' style='background-color: transparent; display: inline-block; width: 93px; border: none; text-align: center; height: 25px; color: #fff; font-size: 13px;' />
                                                    
                                            </div>
                                            <div style='width: 727px; padding: 10px; background-color: #fff; border-left: 1px solid #e9e9e9; border-right: 1px solid #e9e9e9; border-bottom: 2px solid rgba(0,0,0,.1); border-bottom-left-radius: 6px; border-bottom-right-radius: 6px;'>
                                                <div id="comments-container"></div>
                                            </div>
                                        </div>
                                        <input type="hidden" id="hdnindexobbl" runat="server" clientidmode="Static" />
                                        <input type="hidden" id="hdntokenbbl" runat="server" clientidmode="Static" />
                                        <input type="hidden" id="hdnuserbbl" runat="server" clientidmode="Static" />
                                        <input type="hidden" id="hdnindexop" runat="server" clientidmode="Static" />
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
    <script type="text/javascript" src="assets/js/custom.js"></script>

    <link href="bower_components/comments/jquery-comments.css" rel="stylesheet" />
    <script type="text/javascript" src="http://www.parsecdn.com/js/parse-1.4.2.min.js"></script>

    <script type="text/javascript" src="https://d2876v00vfihtk.cloudfront.net/js/aws-sdk-all.js"></script>
    <script src="https://d2876v00vfihtk.cloudfront.net/js/jquery.timeago.js"></script>
    <script type="text/javascript" src="bower_components/comments/config.js"></script>
    <script type="text/javascript" src="bower_components/comments/jquery-comments.js"></script>

    <script type="text/javascript" src="/v1/js/viewbubble.js"></script>
</body>
</html>
