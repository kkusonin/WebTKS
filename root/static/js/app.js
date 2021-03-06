$(document).ready(function() {
  // enable tablesorter
  $('.tablesorter').tablesorter({});

  // enabel tooltips
  $('[rel="tooltip"]').tooltip();

  // jquery validation
  if ($('#validation_json').length > 0) {
    var validationJSON = JSON.parse(decodeURIComponent($('#validation_json').val()));
    $('.form-horizontal').validate({
        rules: validationJSON.rules,
        messages: validationJSON.messages
    });
  }
});
