<?php

/*
|--------------------------------------------------------------------------
| Broadcast Channels
|--------------------------------------------------------------------------
|
| Here you may register all of the event broadcasting channels that your
| application supports. The given channel authorization callbacks are
| used to check if an authenticated user can listen to the channel.
|
*/

Broadcast::channel('App.User.{id}', function ($user, $id) {
    return (int) $user->id === (int) $id;
});

Broadcast::channel('chat.{partnerid}', function($user){
    return ["id" => $user->id, "img_url" => $user->img_url, "name" => $user->name, "email"=>$user->email];
});

Broadcast::channel('chat.{partnerid}.{userid}', function($user){
    return ["id" => $user->id, "img_url" => $user->img_url, "name" => $user->name, "email"=>$user->email];
});

Broadcast::channel('Channel.{userid}', function($user){
    return ["id" => $user->id, "img_url" => $user->img_url, "name" => $user->name, "email"=>$user->email];
});

Broadcast::channel('company.{userid}', function($user){
    return ["id" => $user->id, "img_url" => $user->img_url, "name" => $user->name, "email"=>$user->email];
});