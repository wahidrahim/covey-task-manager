$(document).ready(function() {

	$('#urgency_slider').change(function() {

		$('#task_urgency').val($(this).attr('data-slider'));
	});

	$('#importance_slider').change(function() {

		$('#task_importance').val($(this).attr('data-slider'));
	});
});
