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
//= require jquery


//= require stride/Chart.bundle
//= require stride/jquery.justifiedGallery.min
//= require stride/main
//= require stride/navigation.fixed
//= require stride/plugins
//= require stride/navigation

//= require stride/rev-slider/jquery.themepunch.revolution.min
//= require stride/rev-slider/jquery.themepunch.tools.min
//= require stride/rev-slider/revolution.extension.actions.min
//= require stride/rev-slider/revolution.extension.carousel.min
//= require stride/rev-slider/revolution.extension.kenburn.min
//= require stride/rev-slider/revolution.extension.layeranimation.min
//= require stride/rev-slider/revolution.extension.migration.min
//= require stride/rev-slider/revolution.extension.navigation.min
//= require stride/rev-slider/revolution.extension.parallax.min
//= require stride/rev-slider/revolution.extension.slideanims.min
//= require stride/rev-slider/revolution.extension.video.min



//= require core/bootstrap-material-design.min
//= require plugins/arrive.min
//= require plugins/bootstrap-tagsinput
//= require plugins/chartist.min
//= require plugins/nouislider.min
//= require plugins/perfect-scrollbar.jquery.min
//= require plugins/moment.min
//= require plugins/sweetalert2
//= require plugins/nouislider.min
//= require plugins/jquery.validate.min
//= require plugins/jquery.bootstrap-wizard

//= require plugins/jquery.dataTables.min
//= require plugins/bootstrap-tagsinput
//= require plugins/jasny-bootstrap.min
//= require plugins/fullcalendar.min
//= require plugins/jquery-jvectormap
//= require plugins/bootstrap-notify
//= require demo/demo


//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
// 


$(document).ready(function() {


   $('form').on('click', '.add_fields', function(event) {
        
   var time, regexp;
   time = new Date().getTime()
   regexp = new RegExp($(this).data('id'), 'g');
   $('.fields').append($(this).data('fields').replace(regexp, time));;  
  });


  // for remove row dynamic in quotation/new
  $('form').on('click', '.remove_record', function(event) {
      $(this).parents('.submenu').remove();
      if ($('.remove_record').length < 2) $('.remove_record').hide();
      
  });

 function readURL(input) {

  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function(e) {
      $('#blah').attr('src', e.target.result);
    }

    reader.readAsDataURL(input.files[0]);
  }
}

$("#imgInp").change(function() {
  readURL(this);
});



// sidebar rest code of navigator.js

  $('body').bootstrapMaterialDesign();

  $sidebar = $('.sidebar');

  md.initSidebarsCheck();

  window_width = $(window).width();

  // check if there is an image set for the sidebar's background
  md.checkSidebarImage();

  //    Activate bootstrap-select
  if ($(".selectpicker").length != 0) {
    $(".selectpicker").selectpicker();
  }

  //  Activate the tooltips
  $('[rel="tooltip"]').tooltip();

  $('.form-control').on("focus", function() {
    $(this).parent('.input-group').addClass("input-group-focus");
  }).on("blur", function() {
    $(this).parent(".input-group").removeClass("input-group-focus");
  });

  // remove class has-error for checkbox validation
  $('input[type="checkbox"][required="true"], input[type="radio"][required="true"]').on('click', function() {
    if ($(this).hasClass('error')) {
      $(this).closest('div').removeClass('has-error');
    }
  });

});