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
//= require twitter/bootstrap
//= require_tree .

$(function() {

  var home_chart_data = {
    labels : ["January","February","March","April","May","June","July"],
    datasets : [
      {
        fillColor : "rgba(220,220,220,0.5)",
        strokeColor : "rgba(220,220,220,1)",
        pointColor : "rgba(220,220,220,1)",
        pointStrokeColor : "#fff",
        data : [65,59,90,81,56,55,40]
      },
      {
        fillColor : "rgba(151,187,205,0.5)",
        strokeColor : "rgba(151,187,205,1)",
        pointColor : "rgba(151,187,205,1)",
        pointStrokeColor : "#fff",
        data : [28,48,40,19,96,27,100]
      }
    ]
  };


  // When we click on the LI
  $("li").click(function(){
    // If this isn't already active
    if (!$(this).hasClass("active")) {
      // Remove the class from anything that is active
      $("li.active").removeClass("active");
      // And make this active
      $(this).addClass("active");
    }
  });
   
  var show_game_detail = function() {
    $.ajax({
      method: 'GET',
      url: $(this)[0].href,
      dataType: 'html',
      success: function(detail) {
        $('#main_area').html(detail);
      }
    });
    return false;
  };
  
  var show_game_list = function() {
    $.ajax({
      method: 'GET',
      url: '/games/list',
      dataType: 'html',
      success: function(list) {
        $('#game_sidebar').html(list);
        $('.gamejax').on('click', show_game_detail);
      }
    });
    return false;
  };



  var do_the_chart = function() {
    //Get context with jQuery - using jQuery's .get() method.
    var ctx = $("#home_chart").get(0).getContext("2d");
    //This will get the first returned node in the jQuery collection.
    var myNewChart = new Chart(ctx);

    new Chart(ctx).Line(home_chart_data, {scaleFontColor: "#BFBFB0", scaleGridLineColor : "rgba(135,85,122,.2)"});

  };

  do_the_chart();


  var display_home = function() {
    $.ajax({
      method: 'GET',
      url: '/welcome',
      dataType: 'html',
      success: function(main) {
        // console.log(main);
        // console.log(a);
        // console.log(b);
        // console.log(c);
        $('#main_area').html(main);
        do_the_chart();
      }
    });
    return false;
  };

  var show_signup_form = function() {
    $.ajax({
      method: 'GET',
      url: $(this)[0].href,
      dataType: 'html',
      success: function(form) {
        $('#everything').html(form);
      }
    });
    return false;
  };

  $('#home').on('click', display_home );
  $('#user_signup_link').on('click', show_signup_form);
  $('.gamejax').on('click', show_game_detail);

});




