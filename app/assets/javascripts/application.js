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
//= require foundation
//= require turbolinks
//= require_tree .

$('body').on("click", ".marker", function(){
	var detailID = $(this).attr('id') + "-details";
	var $detailView = $("#" + detailID);
	$detailView.show();

});

$(function(){ $(document).foundation();
	var $form = $('#new-iconup').hide();
  $('img').click(function(event) {
  	var x = event.offsetX;
  	var y = event.offsetY;
    var $markup = $('<div class="marker">').appendTo($('#floorplan'));
    $markup.css('top', y + 'px').css('left', x +'px');
    $form.appendTo($('#floorplan')).css('top', y + 'px').css('left', x +'px').show();
    $('#iconup_x_coordinate').val(x);
    $('#iconup_y_coordinate').val(y);


    // $form.addEventListener()    
    // showIconupMenu(event);
    // sendAjaxPost();

  });
});

// function showIconupMenu(data){
// 	// # put an id on that form
// 	// # when the user clicks:
// 	// 	# grab the form
// 	// 	# append its div on the image the same way you did the other div

// }

// function sendAjaxPost(){

// 	success: function(){

// 	}
// }
