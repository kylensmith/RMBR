// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.sticky
//= require turbolinks
//= require gridstack-js-rails-underscore
//= require_tree .


$(function () {
    var options = {
        cell_height: 170,
        vertical_margin: 10,
        animate: true,
        height: 2,
        width: 6,
        float:false,
        static_grid: true
    };
    $('.main').gridstack(options);

    options = {
        cell_height: 130,
        vertical_margin: 5,
        animate: true,
        width: 6,
        float:true
    };
    $('.top').gridstack(options);

    options = {
        cell_height: 90,
        animate: true,
        width: 6,
        float:true
    };
    $('.bott').gridstack(options);

    options = {
        cell_height: 170,
        vertical_margin: 10,
    	resizable: { handles: 'se, sw' },
        animate: true,
        width: 6,
        float:true
    };
    $('.second').gridstack(options);

    options = {
        cell_height: 170,
        vertical_margin: 10,
        animate: true,
        width: 6,
        float:true
    };
    $('.profile_head').gridstack(options);

    options = {
        cell_height: 170,
        vertical_margin: 10,
        animate: true,
        width: 6,
        float:true
    };
    $('.usernew').gridstack(options);

    options = {
        cell_height: 170,
        vertical_margin: 10,
        animate: true,
        width: 6,
        float:true
    };
    $('.profile_body').gridstack(options);

    options = {
        cell_height: 50,
        vertical_margin: 10,
        animate: true,
        width: 6,
        float:true
    };
    $('.profile_follow_head').gridstack(options);

    options = {
        cell_height: 50,
        vertical_margin: 10,
        animate: true,
        width: 6,
        float:true
    };
    $('.profile_follow_head2').gridstack(options);

    options = {
        cell_height: 85,
        vertical_margin: 10,
        animate: true,
        width: 12,
        float:true
    };
    $('.profile_follow_body').gridstack(options);

    options = {
        cell_height: 55,
        vertical_margin: 10,
        animate: true,
        width: 6,
        float:true
    };
    $('.profile_follow_body2').gridstack(options);
});

$(document).ready (function(){
$('.grid-stack-item').resize( function () {
	console.log ('hello');
	var height = $(this).height();
	console.log (height);
	var width = $(this).width();
	console.log (width);
	var showWidth = $(window).width() / 6 + 5;
	console.log (showWidth);
	if (height >= 205 && width >= showWidth){
		$(this).find(".etitle,.elocdate").show();
	}
	else {
		$(this).find(".etitle,.elocdate").hide();
	}
});
});

$(document).ready(function(){
    $(".top").sticky({topSpacing:0});
  });

$(document).ready(function(){
    $(".lightbox-inner").on("click",'.close', function(){
        $('.lightbox-inner').html('<div class="close">close</div>');
        $('.lightbox-outer').hide();
    });
    $(".lightbox-outer").on("click", function(){
        $('.lightbox-inner').html('<div class="close">close</div>');
        $('.lightbox-outer').hide();
    });
  });

$(document).ready(function(){
    var imgwidth = $(".img_display").width()
    imgwidth -= 100
    imgwidth = imgwidth.toString() + "px"
    $('.photo_butt').css("left", imgwidth);
  });
