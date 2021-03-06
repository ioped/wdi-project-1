//= require jquery
//= require jquery_ujs
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


  var do_the_chart = function() {
    //Get context with jQuery - using jQuery's .get() method.
    var ctx = $("#home_chart").get(0).getContext("2d");
    //This will get the first returned node in the jQuery collection.
    var myNewChart = new Chart(ctx);

    new Chart(ctx).Line(home_chart_data, {scaleFontColor: "#BFBFB0", scaleGridLineColor : "rgba(135,85,122,.2)"});

  };



   
  var show_game_detail = function() {
    $.ajax({
      method: 'GET',
      url: $(this)[0].href,
      dataType: 'html',
      success: function(detail) {
        $('#main').html(detail);
      }
    });
    return false;
  };




  var display_home = function() {
    $.ajax({
      method: 'GET',
      url: '/welcome',
      dataType: 'html',
      success: function(main) {
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
        $('#directions_to_stranger').html("<h1>Create an account</h1>");
        $('#login_screen').html(form);
        $('#login_screen').attr('id','signup_screen');
      }
    });
    return false;
  };

  var show_login_form = function() {
    $.ajax({
      method: 'GET',
      url: $(this)[0].href,
      dataType: 'html',
      success: function(form) {
        $('#directions_to_stranger').html("<h1>Please log in</h1>");
        $('#signup_screen').html(form);
        $('#signup_screen').attr('id','login_screen');
      }
    });
    return false;
  };

  $('#home').on('click', display_home );
  $('#user_signup_link').on('click', show_signup_form );
  $('#user_login_link').on('click', show_login_form );
  $('.gamejax').on('click', show_game_detail );

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




  var show_account_page = function() {
    $.ajax({
      method: 'GET',
      url: $(this)[0].href,
      dataType: 'html',
      success: function(page) {
        $('#everything').html(page);
      }
    });
    return false;
  };

  $('#account_page_link').on('click', show_account_page)




  var show_write_review_box = function() {
    $.ajax({
      method: 'GET',
      url: 'signup',
      dataType: 'html',
      success: function(page) {
        $('#new_review').html(page);
        $('#write_review_button').hide()
      }
    });
    return false;
  };




  $('#write_review_button').on('click', show_write_review_box)


  // do_the_chart();

  // $.getJSON("/search?address=" + address + "&format=json"

});

// Unused

  // var show_game_list = function() {
  //   $.ajax({
  //     method: 'GET',
  //     url: '/games/list',
  //     dataType: 'html',
  //     success: function(list) {
  //       $('#game_sidebar').html(list);
  //       $('.gamejax').on('click', show_game_detail);
  //     }
  //   });
  //   return false;
  // };



