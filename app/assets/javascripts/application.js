// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets
//= require bootstrap-slider

$(document).ready(function() {

	var urgency_slider = $('#urgency-slider').slider({
		min: 0,
		max: 100,
		value: 50,
		formater: function(urgency) { return 'urgency: ' + urgency; }
	})

	urgency_slider.on('slide', function(slideEvent) {
		$('#task_urgency').val(slideEvent.value);
	});

	var importance_slider = $('#importance-slider').slider({
		min: 0,
		max: 100,
		value: 50,
		formater: function(urgency) { return 'urgency: ' + urgency; }
	})

	importance_slider.on('slide', function(slideEvent) {
		$('#task_importance').val(slideEvent.value);
	});

});
