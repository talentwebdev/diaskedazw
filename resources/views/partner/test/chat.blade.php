
@extends('partner.layouts.app')


@section('content')
   
   <!--
<div style='position:fixed; bottom:0px; width:100%;' class='chatapp'>

 <div class='chat-component' style=''>
    <div class="col-sm-12 col-sm-offset-4 frame">
        <div style='width: 100%; height:10%; background-color:#fff; padding:10px;'>
            <h4 style=' font-weight:700; color: #eee;' class='chat-title'><p>Chatting</p></h4>
        </div>
        <ul class='message-list'></ul>
        <div class='chat-input'>
            <div class="msj-rta macro">                        
                <div class="text text-r" style="background:whitesmoke !important">
                    <input class="mytext" placeholder="Type a message"/>
                    <a href="" class="m-messenger__form-attachment">
                        <i class="la la-paperclip"></i>
                    </a>
                </div> 

            </div>             
        </div>
    </div>
</div>
</div>
-->
<div class="chat-component">
    <div class="panel panel-default">
        <div class="row panel-heading top-bar" style="position:relative;">
            <div>                
                <h4 style='font-weight:400;'><i class="fas fa-users"></i> Current Users</h4>
            </div>
            <div class="" style="position: absolute; right: 20px;">
                <i class="fas fa-times-circle close-chat"></i>
            </div>
        </div>
        <div class="panel-body msg_container_base">
            <div class="row msg_container base_sent">
                <ul class='list-group' id='userlist' style='width:100%;'>
                    <li class='list-group-item' >
                        <div class='row'>
                            <div class='img'>
                                <img src='{{ asset("img/bg-img/10.jpg") }}'  />
                            </div>
                            <div class='info'>
                                <span> Hello </span></br>
                                <span> Hell@chat.com </span>
                            </div>
                        </div>
                    </li>
                    
                </ul>
            </div>
        </div>
    </div>
</div>

<div style='position:fixed; bottom:0px; width:100%;' class='chatapp'>
<div class="chat-component">
    <div class="panel panel-default">
        <div class="row panel-heading top-bar" style="position:relative;">
            <div>
                <img src="http://www.bitrebels.com/wp-content/uploads/2011/02/Original-Facebook-Geek-Profile-Avatar-1.jpg" style='width:40px; height:40px; border-radius:50%;' class=" img-responsive ">
            </div>
            <div class="col-md-5 col-xs-8">
                <div>Hello</div>
                <div>Hello@chat.com</div>
            </div>
            <div class="" style="position: absolute; right: 20px;">
                <i class="fas fa-times-circle close-chat"></i>
            </div>
        </div>
        <div class="panel-body msg_container_base">
            <div class="row msg_container base_sent">
                <div class="col-md-2 col-xs-2 avatar">
                    <img src="http://www.bitrebels.com/wp-content/uploads/2011/02/Original-Facebook-Geek-Profile-Avatar-1.jpg">
                </div>
                <div class="col-md-10 col-xs-10 ">
                    <div class='chat-sender'>hello</div>
                    <div class="messages you msg_sent">
                        <p>that mongodb thing looks good, huh?
                        tiny master db, and huge document storesdfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffsdfsdfsdfsdfsdfsdfsdf</p>
                        <time datetime="2009-11-13T20:00">Timothy • 51 min</time>
                    </div>
                </div>
                
            </div>

            <div class="row msg_container base_sent">
                <div class="col-md-2 col-xs-2 avatar">
                    <img src="http://www.bitrebels.com/wp-content/uploads/2011/02/Original-Facebook-Geek-Profile-Avatar-1.jpg">
                </div>
                <div class="col-md-10 col-xs-10 ">
                    <div class="messages you msg_sent">
                        <p>that mongodb thing looks good, huh?
                        tiny master db, and huge document storesdfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffsdfsdfsdfsdfsdfsdfsdf</p>
                        <time datetime="2009-11-13T20:00">Timothy • 51 min</time>
                    </div>
                </div>                        
            </div>
            
            <div class="row msg_container base_sent">
                <div class="col-md-10 col-xs-10 ">
                    <div class="messages me msg_sent">
                        <p>that mongodb thing looks good, huh?
                        tiny master db, and huge document storesdfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffsdfsdfsdfsdfsdfsdfsdf</p>
                        <time datetime="2009-11-13T20:00">Timothy • 51 min</time>
                    </div>
                </div>                        
            </div>
        </div>
        <div class="panel-footer" style='position:relative;'>
            <div class='row chat-input-container' style='width:100%;' >
                <textarea class='chat-input' placeholder='Type here and hit <Enter>'></textarea>
            </div>
            <i class="fas fa-share chat-text-share"></i>
        </div>
    </div>
</div>
</div>

<div class='arrow'></div>
@stop


@push('external-styles')
    <link href="{{ asset('css/common/listcommon.css') }}" rel='stylesheet' />
    <link href="{{ asset('css/chat-component/chat-component.css') }}" rel='stylesheet' />
@endpush


@push('page-styles')
.arrow{
    width: 0;
    height: 0;
    border-left: 7px solid transparent;
    border-right: 7px solid transparent;
    border-bottom: 9px solid #f00;
    margin-left: 20px;
}
#userlist .list-group-item{
    height:60px; 
    width:95%; 
    margin: auto;
     margin-top: 10px; 
     border-radius: 10px; 
     border: 0px solid;  
     background-color: #EEE;
}
#userlist .list-group-item .img img{
    border-radius: 50%;
    width: 40px;
    height:40px;
}
#userlist .list-group-item .info{
    margin-left: 30px;
}
#userlist .list-group-item:hover{
    background-color: rgb(0, 162, 232);
    cursor:point;
}

.list-group .img-container.active:after{
    display: block;
    content: " ";
    position: relative;
    height: 10px;
    width: 10px;
    border-radius: 50%;
    bottom:5px;
    right:5px;
    background: #5867dd;
}
.list-group .img-container:after{
    display: block;
    content: " ";
    position: relative;
    height: 10px;
    width: 10px;
    border-radius: 50%;
    bottom:5px;
    right:5px;
    background: #888;
}

.chat-component {
    position:relative;
    right: 360px;
    width:350px; 
    float:right;
}
.close-chat{
    font-size: 30px;
}
.close-chat:hover{
    color: rgb(193, 125, 219);
}
.chat-text-share{
    position: absolute; 
    top: 10px; 
    right: 20px; 
    font-size:20px; 
    padding: 10px; 
    border-radius: 50%; 
    background-color: rgb(151, 52, 188); 
    color:#FFF;
}
.chat-text-share:hover{
    background-color: rgb(106, 37, 133); 
}
.chat-sender{
    margin-left: 10px;
    font-weight:400;
    color:#AAA;
}
textarea.chat-input::-webkit-scrollbar {
    width: 6px;
}
textarea.chat-input::-webkit-scrollbar-button {
    width: 6px;
    display: block;
    height: 100%;
}
textarea.chat-input::-webkit-scrollbar-thumb {
    width: 6px;
    border-radius: 4px !important;
    background-color: #d9d6d6;
    cursor: pointer;
}
.panel-footer .row{
    margin: 0px !important;
    background-color:#FFF;
}

.chat-input{
    border: 0px solid;
    background-color: #FFF;
    resize: none;
    padding-top: 18px !important;
    padding-left: 16px !important;
    padding-right: 68px !important;
    padding-bottom: 5px !important;
    overflow-y: auto;
    min-height: 40px;
    max-height: 90px;
    height: 70px;
}
.col-md-2, .col-md-10{
    padding:0;
}
.panel{
    margin-bottom: 0px;
}
.chat-window{
    bottom:0;
    position:fixed;
    float:right;
    margin-left:10px;
}
.chat-window > div > .panel{
    border-radius: 5px 5px 0 0;
}
.icon_minim{
    padding:2px 10px;
}
.msg_container_base{
  background: #FFF;
  margin: 0;
  padding: 0 10px 10px;
  height:400px;
  overflow-x:hidden;
  border-bottom: 1px solid #AAA;
  width:100%;
}
.top-bar {
  background: url({{ asset('img/misc/user_profile_bg.jpg') }});
  color: white;
  padding: 10px;
  position: relative;
  overflow: hidden;
  border-radius: 15px 30px 0px 0px !important;
  width: 100%;
  margin-left: 0px !important;
}
.msg_receive{
    padding-left:0;
    margin-left:0;
}
.msg_sent{
    padding-bottom:20px !important;
    margin-right:0;
}
.messages {
  background: #eee;
  padding: 10px;
  border-radius: 15px;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
  max-width:100%;
}
.messages.you{
    margin-right:30px;
}
.messages.me{
    margin-left: 30px;
    background-color: #716aca;
    
}
.messages.me > p{
    color: #FFF;
    font-weight: 400;
}

.messages > p {
    font-size: 13px;
    margin: 0 0 0.2rem 0;
    word-wrap: break-word;
  }
.messages > time {
    font-size: 11px;
    color: #ccc;
}
.msg_container {
    padding: 10px;
    overflow: hidden;
    display: flex;
}
.avatar img {
    display: block;
    width:40px !important;
    height:40px !important;
}
.avatar {
    position: relative;
    background-color: #FFF;
}
.base_receive > .avatar:after {
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    width: 0;
    height: 0;
    border: 5px solid #FFF;
    border-left-color: rgba(0, 0, 0, 0);
    border-bottom-color: rgba(0, 0, 0, 0);
}

.base_sent {
  justify-content: flex-end;
  align-items: flex-end;
}
.base_sent > .avatar:after {
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    width: 0;
    height: 0;
    border: 5px solid white;
    border-right-color: transparent;
    border-top-color: transparent;
    box-shadow: 1px 1px 2px rgba(black, 0.2); // not quite perfect but close
}

.msg_sent > time{
    float: right;
}

.msg_container_base::-webkit-scrollbar {
    width: 6px;
}
.msg_container_base::-webkit-scrollbar-button {
    width: 6px;
    display: block;
    height: 100%;
}
.msg_container_base::-webkit-scrollbar-thumb {
    width: 6px;
    border-radius: 4px !important;
    background-color: #d9d6d6;
    cursor: pointer;
}

.btn-group.dropup{
    position:fixed;
    left:0px;
    bottom:0;
}
@endpush



@push('scripts')
<script>
/*
var me = {};
me.avatar = "https://lh6.googleusercontent.com/-lr2nyjhhjXw/AAAAAAAAAAI/AAAAAAAARmE/MdtfUmC0M4s/photo.jpg?sz=48";

var you = {};
you.avatar = "https://a11.t26.net/taringa/avatares/9/1/2/F/7/8/Demon_King1/48x48_5C5.jpg";

function formatAMPM(date) {
    var hours = date.getHours();
    var minutes = date.getMinutes();
    var ampm = hours >= 12 ? 'PM' : 'AM';
    hours = hours % 12;
    hours = hours ? hours : 12; // the hour '0' should be '12'
    minutes = minutes < 10 ? '0'+minutes : minutes;
    var strTime = hours + ':' + minutes + ' ' + ampm;
    return strTime;
}            

//-- No use time. It is a javaScript effect.
function insertChat(who, text, time){
    if (time === undefined){
        time = 0;
    }
    var control = "";
    var date = formatAMPM(new Date());
    
    if (who == "me"){
        control = '<li style="width:100%">' +
                        '<div class="msj macro">' +
                        '<div class="avatar_"><img class="img-circle" style="width:100%;" src="'+ me.avatar +'" /></div>' +
                            '<div class="text text-l">' +
                                '<p>'+ text +'</p>' +
                                '<p><small>'+date+'</small></p>' +
                            '</div>' +
                        '</div>' +
                    '</li>';                    
    }else{
        control = '<li style="width:100%;">' +
                        '<div class="msj-rta macro">' +
                            '<div class="text text-r">' +
                                '<p>'+text+'</p>' +
                                '<p><small>'+date+'</small></p>' +
                            '</div>' +
                        '<div class="avatar_" style="padding:0px 0px 0px 10px !important"><img class="img-circle" style="width:100%;" src="'+you.avatar+'" /></div>' +                                
                  '</li>';
    }
    setTimeout(
        function(){                        
            console.log($(".chat-component ul").prop('scrollHeight'));
            $(".chat-component ul").append(control).scrollTop($(".chat-component ul").prop('scrollHeight'));
        }, time);
    
}

function resetChat(){
    $(".chat-component ul").empty();
}

$(".chat-component .mytext").on("keydown", function(e){
    if (e.which == 13){
        var text = $(this).val();
        if (text !== ""){
            insertChat("me", text);              
            $(this).val('');
        }
    }
});

$('.chat-component > div > div > div:nth-child(2) > span').click(function(){
    $(".mytext").trigger({type: 'keydown', which: 13, keyCode: 13});
})

//-- Clear Chat
resetChat();

//-- Print Messages
insertChat("me", "Hello Tom...", 0);  
insertChat("you", "Hi, Pablo", 1500);
insertChat("me", "What would you like to talk about today?", 3500);
insertChat("you", "Tell me a joke",7000);
insertChat("me", "Spaceman: Computer! Computer! Do we bring battery?!", 9500);
insertChat("you", "LOL", 12000);

*/
//-- NOTE: No use time on insertChat.
</script>
<script>
//new PerfectScrollbar('.chat-input-container');
</script>
@endpush



