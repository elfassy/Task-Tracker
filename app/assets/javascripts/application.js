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
//= require jquery_ujs
//= require_tree .


$(function() {
	$(".pagination span a").live("click", function (){
		$.get(this.href, null, null, "script");
		return false;
	});
  
    
    $("input#search").on("keyup", function (){
	  $.get($("#verified_search").attr("action"), $("#verified_search").serialize(), null, "script");
	  return false;

	});


    //$("#verified_search").on("submit", function() {
	//	$.get(this.action, $(this).serialize(), alert('Your request was submitted'), "script");
	//	//alert('Your request was submitted');
	//	return false;
		
	//});

});






