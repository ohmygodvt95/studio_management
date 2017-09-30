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
//= require jquery
//= require bootstrap/dist/js/bootstrap.min
//= require propellerkit/dist/js/propeller.min
//= require toastr
//= require select2/dist/js/select2.min
//= require propellerkit/components/select2/js/pmd-select2
//= require_self
$( document ).ready(function() {
  $('.tags-form').select2({
    theme: 'bootstrap'
  });
});
