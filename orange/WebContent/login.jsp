<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/meta.jsp" %>
<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>orange</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="${ctx}/css/default.css">
    <link rel="stylesheet" type="text/css" href="${ctx}/css/styles.css"/>
    <!--[if IE]>
        <script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
    <![endif]-->
    <style type="text/css">
          .login {
            width: 100%;
            margin-bottom: 5%;
            padding: 0;
          }
          .login .login-input{
            height:1.8em;
            line-height: 1.8em;
            border-radius: 10px;
            width: 45%;
            text-align:center;
          }
          .login-font,.login-button{
            font-weight:bold;
            font-size:1.6em;
            font-family:inherit;
          }
          .login-font{
            color:#666666;
          }

          .login-button{
                height:2em;
                width: 35%;
                border-radius: 10px;
                background:#8E493E;
                color: #ffffff;
                -webkit-box-shadow: 0  rgba(0, 0, 0, 0.1);
                -moz-box-shadow: 0  rgba(0, 0, 0, 0.1);
                box-shadow: 0  rgba(0, 0, 0, 0.1);
          }

            ::-webkit-input-placeholder { color:#CCCCCC; }
            ::-moz-placeholder { color:#CCCCCC; } /* firefox 19+ */
            :-ms-input-placeholder { color:#CCCCCC; } /* ie */
            input:-moz-placeholder { color:#CCCCCC; }
          input,textarea{outline:none;}
    </style>
</head>
<body>
    <div id="container" class="wrapper">
        <ul id="scene" class="scene unselectable"
            data-friction-x="0.1"
            data-friction-y="0.1"
            data-scalar-x="25"
            data-scalar-y="15">
            <li class="layer" data-depth="0.00"></li>
            <li class="layer" data-depth="0.10"><div class="background"></div></li>
            <li class="layer" data-depth="0.10"><div class="light orange b phase-4"></div></li>
            <li class="layer" data-depth="0.10"><div class="light purple c phase-5"></div></li>
            <li class="layer" data-depth="0.10"><div class="light orange d phase-3"></div></li>
            <li class="layer" data-depth="0.15">
                <ul class="rope depth-10">
                    <li><img src="${ctx}/img/picture/rope.png" alt="Rope"></li>
                    <li class="hanger position-2">
                        <div class="board cloud-2 swing-1"></div>
                    </li>
                    <li class="hanger position-4">
                        <div class="board cloud-1 swing-3"></div>
                    </li>
                    <li class="hanger position-8">
                        <div class="board birds swing-5"></div>
                    </li>
                </ul>
            </li>
            <li class="layer" data-depth="0.20"><!-- <h1 class="title">parallax<em>.js</em></h1> -->
                
            </div>
            </li>
            <li class="layer" data-depth="0.30">
                <ul class="rope depth-30">
                    <li><img src="${ctx}/img/picture/rope.png" alt="Rope"></li>
                    <li class="hanger position-1">
                        <div class="board cloud-1 swing-3"></div>
                    </li>
                    <li class="hanger position-5">
                        <div class="board cloud-4 swing-1"></div>
                    </li>
                </ul>
            </li>
            <li class="layer" data-depth="0.30"><div class="wave paint depth-30"></div></li>
            <li class="layer" data-depth="0.40"><div class="wave plain depth-40"></div></li>
            <li class="layer" data-depth="0.50"><div class="wave paint depth-50"></div></li>
            <li class="layer" data-depth="0.60"><div class="lighthouse depth-60"></div></li>
            <li class="layer" data-depth="0.60">
                <ul class="rope depth-60">
                    <li><img src="${ctx}/img/picture/rope.png" alt="Rope"></li>
                    <li class="hanger position-3">
                        <div class="board birds swing-5"></div>
                    </li>
                    <li class="hanger position-6">
                        <div class="board cloud-2 swing-2"></div>
                    </li>
                    <li class="hanger position-8">
                        <div class="board cloud-3 swing-4"></div>
                    </li>
                </ul>
            </li>
            <li class="layer" data-depth="0.60"><div class="wave plain depth-60"></div></li>
            <li class="layer" data-depth="0.80"><div class="wave plain depth-80"></div></li>
            <li class="layer" data-depth="1.00"><div class="wave paint depth-100"></div></li>
        </ul>
        <section id="about" class="wrapper about hide accelerate">
            <div class="cell accelerate">
                <div class="cables center accelerate">
                    <div class="panel accelerate">
                        <header>
                            <h1>登陆<em>LOGIN</em></h1>
                        </header>
                        <div class="login">
                            <input class="login-input login-font" id="username"  placeholder="用户名"  type="text" autocomplete="off" />
                        </div>
                        <div class="login">
                            <input class="login-input login-font" id="password" placeholder="密码" type="password" />
                        </div>
                        <div class="login">
                            <input class="login-button" id="login" value="Go" type="button" ></input>
                        </div><br><br>

                    </div>
                </div>
            </div>
        </section>
        <button id="toggle" class="toggle i">
            <div class="cross">
                <div class="x"></div>
                <div class="y"></div>
            </div>
        </button>
        <div id="prompt" class="wrapper prompt hide accelerate">
            <div class="cell accelerate">
                <div class="panel center unselectable accelerate">
                    <button id="dismiss" class="dismiss">
                        <div class="cross">
                            <div class="x"></div>
                            <div class="y"></div>
                        </div>
                    </button>
                    <div class="tilt-scene">
                        <img class="tilt" src="${ctx}/img/picture/tilt.png">
                    </div>
                    <h2>Orange</h2>
                    <p>基于bootstrap,jQuery</p>
                    <p>(咿呀橘子)</p>
                </div>
            </div>
        </div>
    </div>
    
    <script src="${ctx}/js/libraries.min.js"></script>
    <script src="${ctx}/js/jquery.parallax.js"></script>
    <script>

    // jQuery Selections
    var $html = $('html'),
        $container = $('#container'),
        $prompt = $('#prompt'),
        $toggle = $('#toggle'),
        $about = $('#about'),
        $scene = $('#scene');

    // Hide browser menu.
    (function() {
        setTimeout(function(){window.scrollTo(0,0);},0);
    })();

    // Setup FastClick.
    FastClick.attach(document.body);

    // Add touch functionality.
    if (Hammer.HAS_TOUCHEVENTS) {
        $container.hammer({drag_lock_to_axis: true});
        _.tap($html, 'a,button,[data-tap]');
    }

    // Add touch or mouse class to html element.
    $html.addClass(Hammer.HAS_TOUCHEVENTS ? 'touch' : 'mouse');

    // Resize handler.
    (resize = function() {
        $scene[0].style.width = window.innerWidth + 'px';
        $scene[0].style.height = window.innerHeight + 'px';
        if (!$prompt.hasClass('hide')) {
            if (window.innerWidth < 600) {
                $toggle.addClass('hide');
            } else {
                $toggle.removeClass('hide');
            }
        }
    })();

    // Attach window listeners.
    window.onresize = _.debounce(resize, 200);
    window.onscroll = _.debounce(resize, 200);

    function showDetails() {
        $about.removeClass('hide');
        $toggle.removeClass('i');
    }

    function hideDetails() {
        $about.addClass('hide');
        $toggle.addClass('i');
    }

    // Listen for toggle click event.
    $toggle.on('mouseover', function(event) {
        $toggle.hasClass('i') ? showDetails() : hideDetails();
    });

    // Pretty simple huh?
    $scene.parallax();

    // Check for orientation support.
    setTimeout(function() {
        if ($scene.data('mode') === 'cursor') {
            $prompt.removeClass('hide');
            if (window.innerWidth < 600) $toggle.addClass('hide');
            $prompt.on('click', function(event) {
                $prompt.addClass('hide');
                if (window.innerWidth < 600) {
                    setTimeout(function() {
                        $toggle.removeClass('hide');
                    },1200);
                }
            });
        }
    },1000);
    </script>
</body>
</html>
