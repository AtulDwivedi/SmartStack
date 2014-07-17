var uiDemo = {}; // To avoid name conflicts

uiDemo.styleButtons = function() {
  $("#button-div .style-test").button()
                              .click(uiDemo.showDialog);
};

uiDemo.showDialog = function() {
  $("#button-dialog").dialog();
};

uiDemo.showTemp = function(event, ui) {
  $("#temp-display").html(ui.value);
};

uiDemo.upDateProgressBar = function() {
  var currentVal = 
    $("#progressbar-div").progressbar("option", "value");
  if (currentVal < 100) {
    currentVal += 10;
    $("#progressbar-div").progressbar("option", "value", 
                                      currentVal);
  }
};

$(function() {
    $("#button-styler-button").click(uiDemo.styleButtons);
    $("#static-tabbed-panel-div").tabs();
    $("#ajax-tabbed-panel-div").tabs({ collapsible: true });
    $("#accordion-panel-div").accordion();
    $("#start-date").datepicker();
    $("#end-date").datepicker({ changeMonth: true, 
                                numberOfMonths: 2 });
    $("#slider-div").slider({ min: 32, max: 212,
                              slide: uiDemo.showTemp });
    $("#progressbar-div").progressbar();
    $("#progressbar-button").click(uiDemo.upDateProgressBar);
});