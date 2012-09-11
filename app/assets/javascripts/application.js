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
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .
//

function addNewFormExp(evt){

  var bvar = false;
  var container = $(".exp_form").first();
  var parent   = $("#parent_form");
  var last_val  = $("#counter").val();
  var next_val = (parseInt(last_val) + 1).toString();

  var form_new_clone = $(container).clone();
  $(form_new_clone).find('.job_title').find('input').attr('id','job_title'+next_val);
  $(form_new_clone).find('.description').find('input').attr('id','description'+next_val);
  $(form_new_clone).find('.start_time').find('#start_time'+last_val).attr('id','start_time'+next_val);
  $(form_new_clone).find('.end_time').find('#end_time'+last_val).attr('id','end_time'+next_val);

  var form_new = $(form_new_clone);
  $(parent).append($(form_new));

  if ((parseInt(last_val) == 0) && (bvar == false)){
    var bttn_container = $('#bttns');
    var remove_bttn = $(bttn_container).find('#new_exp_submit').clone().attr('id', 'new_exp_delete').text('Remove new experience');
    $(bttn_container).append($(remove_bttn));
    bvar = true;
  };

  $('#counter').val(parseInt($('#counter').val()) + 1);
  return false;
}

function removeNewFormExp(evt){

  var bvar = true;
  var last_val  = $("#counter").val();
  console.log(last_val);

  var remove_container = $('#parent_form').find(".exp_form");
  if(parseInt(last_val) =! 0){
    $(remove_container).last().remove();
    $('#counter').val(parseInt($('#counter').val()) - 1);
  }
  else return false;

  $(last_val) = $("#counter").val();
  if (parseInt(last_val) == 0){
    var bttns_container = $('#bttns');
    $(bttns_container).find('#new_exp_delete').remove();
  }
}

function addCompanyToExp(){

}

$(document).ready(function() {
 $('#new_exp_submit').live('click', addNewFormExp);
 $('#new_exp_delete').live('click', removeNewFormExp);
 $('#submit_exp_for_cv').live('click', addCompanyToExp);

})
