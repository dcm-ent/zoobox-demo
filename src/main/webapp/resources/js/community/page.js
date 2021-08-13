// page.js

$(document).ready(function ( ) {
    //text_box
    //


    //button_box
    $("#button_box > ul > li:nth-child(1)").hover(function ( ) {
        $(this).css({"background-color" : "black"});
        $("> a",this).css({"color" : "white"});
    },function ( ) {
        $("#button_box > ul > li").css({"background-color" : "#f7f8fa"});
        $("#button_box > ul > li > a").css({"color" : "black"});
    })

    $("#button_box > ul > li:nth-child(3)").hover(function ( ) {
        $(this).css({"background-color" : "black"});
        $("> a",this).css({"color" : "white"});
    },function ( ) {
        $("#button_box > ul > li").css({"background-color" : "#f7f8fa"});
        $("#button_box > ul > li > a").css({"color" : "black"});
    })


    //comment_box
    $("#comment_box > #comment_top > ul:nth-child(2) > li:nth-child(2) > a").hover(function ( ) {
        $(this).css({"background-color" : "#ff7700"});
    },function ( ) {
        $(this).css({"background-color" : "#808080"});
    })
})  //doc.. ready :)