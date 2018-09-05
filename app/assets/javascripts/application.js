// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery.min
//= require bootstrap.min
//= require bootstrap-select
//= require jquery.leanModal.min
//= require jquery.uls.data
//= require jquery.uls.data.utils
//= require jquery.uls.regionfilter
//= require jquery.uls.core
//= require jquery.flexisel
//= require filedrag
//= require tabs
//= require jquery-ui
//= require jquery.flexslider


$(window).load(function() {
 $("#flexiselDemo3").flexisel({
   visibleItems:1,
   animationSpeed: 1000,
   autoPlay: true,
   autoPlaySpeed: 5000,
   pauseOnHover: true,
   enableResponsiveBreakpoints: true,
   responsiveBreakpoints: {
     portrait: {
       changePoint:480,
       visibleItems:1
     },
     landscape: {
       changePoint:640,
       visibleItems:1
     },
     tablet: {
       changePoint:768,
       visibleItems:1
     }
   }
 });

});
