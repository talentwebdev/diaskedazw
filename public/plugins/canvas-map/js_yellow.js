var renderer,scene,camera,ww,wh,particles,widthScreen=$(window).width();function init(){$(document).ready(function(){scroolSpyBootstrap(),closeMenuClick(),slideElement(".slideanimFromLeft","slideFromLeft"),slideElement(".slideanimFromRight","slideFromRight"),slideElement(".slideanimFromBottom","slideFromBottom"),animateKoniosLogo(),animateMainElements(),initWave(),onClickScrollToThis("#toWhitepaperBtn","#whatepaper-sec"),onClickScrollToThis("#toIcoBtn","#ico-sec");$(window).width();setTimeout(function(){$(".navbar-default").css({"background-color":"#DB831F"})},6e3),$(".slidedown_head").click(function(){return $(".slidedown_body").slideUp(),$(this).next(".slidedown_body").slideToggle(),!1}),$("body").click(function(){$(".slidedown_body").slideUp()}),roadmap(),$("#get_informed_form_btn").click(function(){var e=$("#notifymeEmail").val().trim();if(checkEmail(e)){var t=Cookies.get("Konios_language");"en"===t&&swal("INVALID EMAIL ADDRESS!"),"de"===t&&swal("UngÃ¼ltige Email Adresse!!"),"ru"===t&&swal("ÐÐ•Ð’Ð•Ð ÐÐ«Ð™ ÐÐ”Ð Ð•Ð¡ Ð­Ð›Ð•ÐšÐ¢Ð ÐžÐÐÐžÐ™ ÐŸÐžÐ§Ð¢Ð« !")}else notityMe(e)})})}function notityMe(e){$.ajax({url:"sr/NotifyMe.php",type:"POST",data:{email:e},success:function(e){console.log(e)}}).done(function(e){if("ok"===e)"en"===(t=Cookies.get("Konios_language"))&&swal("Thank You For Subscribing!"),"de"===t&&swal("Danke fÃ¼r Ihre Teilnahme!"),"ru"===t&&swal("Ð¡Ð¿Ð°ÑÐ¸Ð±Ð¾ Ð·Ð° Ð¿Ð¾Ð´Ð¿Ð¸ÑÐºÑƒ!");else if("email_exist"===e){"en"===(t=Cookies.get("Konios_language"))&&swal("This Email Address is allready in our list!"),"de"===t&&swal("Die eingegebene Email Adresse ist bei uns bereits registriert!"),"ru"===t&&swal("Ð­Ñ‚Ð¾Ñ‚ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹ ÑƒÐ¶Ðµ ÐµÑÑ‚ÑŒ Ð² Ð½Ð°ÑˆÐµÐ¼ ÑÐ¿Ð¸ÑÐºÐµ!")}else{var t;"en"===(t=Cookies.get("Konios_language"))&&swal("Some Error occurred , please try again!"),"de"===t&&swal("Etwas ist schief gelaufen. Bitte versuchen Sie es erneut!"),"ru"===t&&swal("ÐŸÑ€Ð¾Ð¸Ð·Ð¾ÑˆÐ»Ð° Ð¾ÑˆÐ¸Ð±ÐºÐ°, Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÑƒ!")}}).fail(function(e,t){var o=Cookies.get("Konios_language");"en"===o&&swal("Some Error occurred , please try again!"),"de"===o&&swal("Etwas ist schief gelaufen. Bitte versuchen Sie es erneut!"),"ru"===o&&swal("ÐŸÑ€Ð¾Ð¸Ð·Ð¾ÑˆÐ»Ð° Ð¾ÑˆÐ¸Ð±ÐºÐ°, Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÑƒ!!")}).always(function(){console.log("Ajax call finished")})}function checkEmail(e){return!e.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)}function roadmap(){$(window).scroll(function(){$("#roadmap-sec .container_roadmap p").each(function(){var e=$(window).scrollTop(),t=$(this).offset().top-e,o=.9*$(window).height();t>o&&$(this).addClass("more-padding"),t<o&&$(this).removeClass("more-padding")})})}function onClickScrollToThis(e,t){$(e).click(function(){$("html, body").animate({scrollTop:$(t).offset().top},1e3)})}function animateMainElements(){
	var e=["#swissmade",".countdowns",".mainButtons"],t=1e3;function o(o){setTimeout(function(){$(e[o]).css({opacity:"9"})},t),t+=0.333e3}for(var i=0;i<e.length;i++)o(i)}function animateKoniosLogo(){var e=["#o_left","#o_right","#circle_middle","#stripe_right_bottom","#stripe_left_bottom","#circle_right_top","#stripe_right","#stripe_right_top","#circle_left_top","#stripe_left_top","#stripe_left","#stripe_top","#o_left","#main_logo"],t=3e3;function o(o){setTimeout(function(){$(e[o]).css({opacity:"9"})},t),t+=200}for(var i=0;i<e.length;i++)o(i)}widthScreen<=768&&($(".navbar").addClass("navbar-fixed-top"),$(".navbar").removeClass("navbar-fixed-bottom")),$(window).on("load",function(){$(".se-pre-con").fadeOut(500),init()}),ww=window.innerWidth,wh=window.innerHeight;var centerVector=new THREE.Vector3(0,0,0),previousTime=0,getImageData=function(e){var t=document.createElement("canvas");t.width=e.width,t.height=e.height;var o=t.getContext("2d");return o.drawImage(e,0,0),o.getImageData(0,0,e.width,e.height)},drawTheMap=function(){for(var e=new THREE.Geometry,t=new THREE.PointsMaterial({size:3,color:'rgb(255, 255, 255)',sizeAttenuation:!1}),o=0,i=imagedata.height;o<i;o+=2)for(var a=0,n=imagedata.width;a<n;a+=2)if(imagedata.data[4*a+4*o*imagedata.width+3]>128){var s=new THREE.Vector3;s.x=1e3*Math.random()-500,s.y=1e3*Math.random()-500,s.z=500*-Math.random(),s.destination={x:a-imagedata.width/2,y:-o+imagedata.height/2,z:0},s.speed=Math.random()/200+.015,e.vertices.push(s)}particles=new THREE.Points(e,t),scene.add(particles),requestAnimationFrame(render)},initWave=function(){THREE.ImageUtils.crossOrigin="",(renderer=new THREE.WebGLRenderer({canvas:document.getElementById("animationMap"),antialias:!0})).setSize(ww,wh),renderer.setClearColor('#DB831F'),scene=new THREE.Scene,(camera=new THREE.PerspectiveCamera(50,ww/wh,.1,1e4)).position.set(-100,0,220),camera.lookAt(centerVector),scene.add(camera);var e=new THREE.TextureLoader;e.crossOrigin="use-credentials",e.load(world_img,function(e){imagedata=getImageData(e.image),drawTheMap()},void 0,function(e){console.error("An error happened.")}),window.addEventListener("resize",onResize,!1)},onResize=function(){ww=window.innerWidth,wh=window.innerHeight,renderer.setSize(ww,wh),camera.aspect=ww/wh,camera.updateProjectionMatrix()},render=function(e){requestAnimationFrame(render);for(var t=0,o=particles.geometry.vertices.length;t<o;t++){var i=particles.geometry.vertices[t];i.x+=(i.destination.x-i.x)*i.speed,i.y+=(i.destination.y-i.y)*i.speed,i.z+=(i.destination.z-i.z)*i.speed}if(e-previousTime>100){var a=Math.floor(Math.random()*particles.geometry.vertices.length),n=particles.geometry.vertices[a],s=particles.geometry.vertices[particles.geometry.vertices.length-a];TweenMax.to(i,2*Math.random()+1,{x:s.x,y:s.y,ease:Power2.easeInOut}),TweenMax.to(s,2*Math.random()+1,{x:n.x,y:n.y,ease:Power2.easeInOut}),previousTime=e}particles.geometry.verticesNeedUpdate=!0,camera.position.x=100*Math.sin(e/5e3),camera.lookAt(centerVector),renderer.render(scene,camera)};$(window).scroll(function(){widthScreen>768&&($(this).scrollTop()>=50?($("#top").fadeIn(1e3),$("#airdropModal").modal("hide")):$("#top").fadeOut(1e3))}),$("#top").click(function(){$("body,html").animate({scrollTop:0},500)});var main_eight=$("#main").height(),ico_height=$("#ico-sec").height(),wp_height=$("#whatepaper-sec").height(),roadHeight=$("#roadmap-sec").height();function closeMenuClick(){$(".nav a").on("click",function(){$(".navbar-toggle").click(),"none"!=$(".navbar-toggle").css("display")&&$(".navbar-toggle").trigger("click")})}function scroolTheWholePage(){$(function(){$.scrollify({section:".section",setHeights:!0,touchScroll:!1,scrollbars:!0})})}function scroolSpyBootstrap(){$("body").scrollspy({target:".navbar",offset:51}),$("#myNavbar a").on("click",function(e){if(""!==this.hash){e.preventDefault();var t=this.hash;$("html, body").animate({scrollTop:$(t).offset().top},800,function(){window.location.hash=t})}})}function slideElement(e,t){$(window).scroll(function(){$(e).each(function(){$(this).offset().top<$(window).scrollTop()+600&&$(this).addClass(t)})})}
	function countdownTime(e,t){function o(e){return 1==e.toString().length?"0"+e:e}new Date;var i=Date.now(),a=new Date(t).getTime(),n=$(e+" .days"),s=$(e+" .hours"),r=$(e+" .minutes"),l=$(e+" .seconds");setInterval(function(){if((i=Date.now())<a){var e=a-i,t=Math.floor(e/1e3%60),c=Math.floor(e/6e4%60),d=Math.floor(e/36e5%24),m=Math.floor(e/864e5);l.text(o(t)),r.text(o(c)),s.text(o(d)),n.text(m)}},100)}$(window).scroll(function(){scroll_top=$(window).scrollTop(),scroll_top>main_eight-50?$(".fixedHeader").fadeIn(500):$(".fixedHeader").fadeOut(300),widthScreen>768?$(".fixedHeader").addClass("fixedHeader_top"):$(".fixedHeader").addClass("fixedHeader_bottom")}),
	countdownTime("#countdownToIco","September 30, 2018 1:00:00"),countdownTime("#countdownToAirdrop","July 1, 2018 1:00:00");var autoSwap=0,items=[],startItem=1,position=0,itemCount=$(".portfolio-slideshow-wrapper .carousel li.items").length,leftpos=itemCount,resetCount=itemCount;function portfolio_ss_pos(e){return"leftposition"!=e&&startItem+ ++position>resetCount&&(position=1-startItem),"leftposition"==e&&(position=startItem-1)<1&&(position=itemCount),position}function portfolio_ss_swap(e,t){var o=e,i=t;if("counter-clockwise"==o){var a=i.find(".left-pos").attr("data-id")-1;0==a&&(a=itemCount),i.find("li.right-pos").removeClass("right-pos").addClass("back-pos"),i.find("li.main-pos").removeClass("main-pos").addClass("right-pos"),i.find("li.left-pos").removeClass("left-pos").addClass("main-pos"),i.find("li.items[data-id="+a+"]").removeClass("back-pos").addClass("left-pos"),--startItem<1&&(startItem=itemCount)}"clockwise"!=o&&""!=o&&null!=o||(i.find("li.items[data-id="+startItem+"]").removeClass("main-pos").addClass("left-pos"),i.find("li.items[data-id="+(startItem+portfolio_ss_pos())+"]").removeClass("right-pos").addClass("main-pos"),i.find("li.items[data-id="+(startItem+portfolio_ss_pos())+"]").removeClass("back-pos").addClass("right-pos"),i.find("li.items[data-id="+portfolio_ss_pos("leftposition")+"]").removeClass("left-pos").addClass("back-pos"),position=0,++startItem>itemCount&&(startItem=1))}$("li.items").each(function(e){items[e]=$(this).text()}),$(".portfolio-slideshow-wrapper .prev").click(function(){portfolio_ss_swap("clockwise",$(this).parent().parent())}),$(".portfolio-slideshow-wrapper .next").click(function(){portfolio_ss_swap("counter-clockwise",$(this).parent().parent())}),$(".portfolio-slideshow-wrapper li.items").click(function(){"items left-pos"==$(this).attr("class")?portfolio_ss_swap("counter-clockwise",$(this).parent().parent()):"items right-pos"==$(this).attr("class")&&portfolio_ss_swap("clockwise",$(this).parent().parent())});