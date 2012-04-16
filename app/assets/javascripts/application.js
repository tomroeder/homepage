// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require fancybox
//= require jquery_ujs
//= require_tree .

$(document).ready(function () {
    //alert("fb_image fancybox neu geladen");
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
    
    // Enlarge all links if the mouse is over it.
    $("a").hover(
    	function(){ $(this).css("font-size", "1.2em"); },
    	function(){	$(this).css("font-size", "1.0em"); }
    )
});