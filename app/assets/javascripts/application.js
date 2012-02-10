// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require fancybox
//= require jquery_ujs
//= require_tree .

//For setup of fancybox see :
//https://github.com/hecticjeff/fancybox-rails
//http://stackoverflow.com/questions/8681041/rails-3-1-fancybox

//Copied from http://stackoverflow.com/questions/8681041/rails-3-1-fancybox
$(document).ready(function(){
 $("a.single_image").fancybox({'type': 'image'});
});

//Copied from jquery.fancybox-1.3.2.setup.js
$(document).ready(function () {
    $("a.fb_image").fancybox({
        'transitionIn': 'elastic',
        'transitionOut': 'elastic',
        'titlePosition': 'over',
        'speedIn': 600,
        'speedOut': 600,
        'overlayShow': true,
        'overlayColor': '#000',
        'overlayOpacity': 0.9
    });
});